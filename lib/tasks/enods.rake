namespace :enod do
  desc "Remove the cart where purchased_at is null"
  task :cart => :environment do
    carts = Cart.where(["(purchased_at IS NULL or product_id IS NULL) and created_at < '#{(Time.now.utc-(30*60)).strftime('%Y-%m-%d %H:%M:%S')}'"])
    for cart in carts
      puts cart.id
      cart.destroy
    end
  end

  task :upload_csv => :environment do
    # payments = ["#{Rails.root}/lib/payments.csv"]
    # for file in payments
    #   CSV.foreach(file, headers: true) do |row|
    #     begin
    #       payment = Payment.new
    #       payment.attributes = row.to_hash
    #       p payment.address
    #       payment.save!
    #     rescue => e
    #       puts e.message
    #     end
    #   end
    # end

    signs = ["#{Rails.root}/lib/sign.csv"]
    for file in signs
      CSV.foreach(file, headers: true) do |row|
        begin
          payment = Sign.new
          payment.attributes = row.to_hash
          p payment.payment_id
          payment.save!
        rescue => e
          puts e.message
        end
      end
    end
  end
end
