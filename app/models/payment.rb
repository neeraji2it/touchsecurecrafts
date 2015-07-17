class Payment < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :amount, :product_name, :customer_name,:is_signed, :date_of_birth, :address, :city, :state, :post_code, :country, :phone, :email, :card_number, :card_expiry, :card_cvv,:token,:ip_address
    has_one :sign, :dependent => :destroy
end
