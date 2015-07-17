class AddCardCvvCardEspiryTokenDateOfBirthToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :token, :string
    add_column :payments, :date_of_birth, :date
    add_column :payments, :card_expiry, :string
    add_column :payments, :card_cvv, :string
  end
end
