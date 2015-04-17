# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => 'rails@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'seller', :active => 'Active', :username => 'seller',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'neeraj@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'buyer', :active => 'Active', :username => 'buyer',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'railsdev@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'non-profit', :active => 'Active', :username => 'non-profit',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'admin@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'admin', :active => 'Active', :username => 'admin',:confirmation_token => '',:confirmed_at => Time.now)

if Category.count == 0
  Category.create(:id => 1, :name => 'Jewellery')
  Category.create(:id => 2, :name => 'Gift')
  Category.create(:id => 3, :name => 'Clothing')
  Category.create(:id => 4, :name => 'Bags')
  Category.create(:id => 5, :name => 'Home Decor')
  Category.create(:id => 6, :name => 'Accessories')
  Category.create(:id => 7, :name => 'Home Furnishing')
  Category.create(:id => 8, :name => 'Women')
  Category.create(:id => 9, :name => 'Men')
  Category.create(:id => 63, :name => 'Kids')
  Category.create(:id => 64, :name => 'Footwear')
  # Category.create(:id => 10, :name => 'Illustrations', :parent_id => 1)
  # Category.create(:id => 11, :name => 'Painting', :parent_id => 1)
  # Category.create(:id => 12, :name => 'Photography', :parent_id => 1)
  # Category.create(:id => 13, :name => 'Sculptures', :parent_id => 1)
  # Category.create(:id => 14, :name => 'Apparel', :parent_id => 2)
  # Category.create(:id => 15, :name => 'Food/Beverage', :parent_id => 2)
  # Category.create(:id => 16, :name => 'Soap', :parent_id => 2)
  # Category.create(:id => 17, :name => 'Face & Body', :parent_id => 3)
  # Category.create(:id => 18, :name => 'Fragrance', :parent_id => 3)
  # Category.create(:id => 19, :name => 'Hair Products', :parent_id => 3)
  # Category.create(:id => 20, :name => 'Make-up', :parent_id => 3)
  # Category.create(:id => 21, :name => 'Bedding/Quilts', :parent_id => 4)
  # Category.create(:id => 22, :name => 'Candles', :parent_id => 4)
  # Category.create(:id => 23, :name => 'Decor', :parent_id => 4)
  # Category.create(:id => 24, :name => 'Home', :parent_id => 4)
  # Category.create(:id => 25, :name => 'Furniture', :parent_id => 4)
  # Category.create(:id => 26, :name => 'Kitchen', :parent_id => 4)
  # Category.create(:id => 27, :name => 'Outdoor', :parent_id => 4)
  # Category.create(:id => 28, :name => 'Soap', :parent_id => 4)
  # Category.create(:id => 29, :name => 'Bracelets', :parent_id => 5)
  # Category.create(:id => 30, :name => 'Earrings', :parent_id => 5)
  # Category.create(:id => 31, :name => 'Necklace', :parent_id => 5)
  # Category.create(:id => 32, :name => 'Rings', :parent_id => 5)
  # Category.create(:id => 33, :name => 'Watches', :parent_id => 5)
  # Category.create(:id => 34, :name => 'Apparel', :parent_id => 6)
  # Category.create(:id => 35, :name => 'Accessories', :parent_id => 6)
  # Category.create(:id => 36, :name => 'iPhone and iPad Covers', :parent_id => 7)
  # Category.create(:id => 37, :name => 'Laptop Bag', :parent_id => 7)
  # Category.create(:id => 38, :name => 'Notebook/Notepads', :parent_id => 7)
  # Category.create(:id => 39, :name => 'Apparel', :parent_id => 8)
  # Category.create(:id => 40, :name => 'Accessories', :parent_id => 8)
  # Category.create(:id => 41, :name => 'Apparel', :parent_id => 9)
  # Category.create(:id => 42, :name => 'Accessories', :parent_id => 9)
  # Category.create(:id => 43, :name => 'Shirts', :parent_id => 39)
  # Category.create(:id => 44, :name => 'Jackets/Coats', :parent_id => 39)
  # Category.create(:id => 45, :name => 'Pants', :parent_id => 39)
  # Category.create(:id => 46, :name => 'Shorts', :parent_id => 39)
  # Category.create(:id => 47, :name => 'Shoes', :parent_id => 39)
  # Category.create(:id => 48, :name => 'Belts', :parent_id => 40)
  # Category.create(:id => 49, :name => 'Hat/Caps', :parent_id => 40)
  # Category.create(:id => 50, :name => 'Scarves', :parent_id => 40)
  # Category.create(:id => 51, :name => 'Socks', :parent_id => 40)
  # Category.create(:id => 52, :name => 'Watches', :parent_id => 40)
  # Category.create(:id => 53, :name => 'Shirts', :parent_id => 41)
  # Category.create(:id => 54, :name => 'Skirts', :parent_id => 41)
  # Category.create(:id => 55, :name => 'Dresses', :parent_id => 41)
  # Category.create(:id => 56, :name => 'Jackets/Coats', :parent_id => 41)
  # Category.create(:id => 57, :name => 'Pants', :parent_id => 41)
  # Category.create(:id => 58, :name => 'Shoes', :parent_id => 41)
  # Category.create(:id => 59, :name => 'Bags/Purses', :parent_id => 42)
  # Category.create(:id => 60, :name => 'Hair Accessories', :parent_id => 42)
  # Category.create(:id => 61, :name => 'Scarves', :parent_id => 42)
  # Category.create(:id => 62, :name => 'Socks', :parent_id => 42)
end
