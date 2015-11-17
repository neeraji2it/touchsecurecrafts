class AddGovernmentIdToIciciPayments < ActiveRecord::Migration
  def change
    add_column :icici_payments, :government_id, :string
  end
end
