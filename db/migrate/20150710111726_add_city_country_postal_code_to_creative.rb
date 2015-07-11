class AddCityCountryPostalCodeToCreative < ActiveRecord::Migration
  def change
    add_column :creatives, :postal_code, :string
    add_column :creatives, :country, :string
    add_column :creatives, :city, :string

  end
end
