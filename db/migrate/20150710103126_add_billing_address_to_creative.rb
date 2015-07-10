class AddBillingAddressToCreative < ActiveRecord::Migration
  def change
    add_column :creatives, :billing_address, :text
    add_column :creatives, :alternate_phone, :string
  end
end
