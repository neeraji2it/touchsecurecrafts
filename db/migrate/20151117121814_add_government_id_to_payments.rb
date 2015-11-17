class AddGovernmentIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :government_id, :string
  end
end
