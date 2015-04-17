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
end
