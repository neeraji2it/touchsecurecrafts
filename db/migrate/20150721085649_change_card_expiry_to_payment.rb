class ChangeCardExpiryToPayment < ActiveRecord::Migration
  def up
    change_column :payments, :card_expiry, :date
  end

  def down
    change_column :payments, :card_expiry, :string
  end
end
