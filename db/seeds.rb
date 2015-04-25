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
  Category.create(:id => 2, :name => 'Clothing')
  Category.create(:id => 3, :name => 'Home Alliance')
  Category.create(:id => 4, :name => "Men's Footwear")
  Category.create(:id => 5, :name => 'Accessories')
  Category.create(:id => 6, :name => 'Gift')
  
  #Jewellery
  Category.create(:id => 7, :name => 'Gold', :parent_id => 1)
  Category.create(:id => 8, :name => 'Silver Jewellery', :parent_id => 1)
  Category.create(:id => 9, :name => 'Birthday Jewellery', :parent_id => 1)
  Category.create(:id => 10, :name => 'Antique Jewellery', :parent_id => 1)
  Category.create(:id => 11, :name => 'Bead Jewellery', :parent_id => 1)
  Category.create(:id => 12, :name => 'Bridal Jewellery', :parent_id => 1)
  Category.create(:id => 13, :name => 'Custom Jewellery', :parent_id => 1)
  Category.create(:id => 14, :name => 'Fashion Jewellery', :parent_id => 1)
  Category.create(:id => 15, :name => 'Filigree Jewellery', :parent_id => 1)
  Category.create(:id => 16, :name => 'Gold Jewellery', :parent_id => 1)
  Category.create(:id => 17, :name => 'Handmade Jewellery', :parent_id => 1)
  Category.create(:id => 18, :name => 'Ivory Jewellery', :parent_id => 1)
  Category.create(:id => 19, :name => 'Jadau Jewellery', :parent_id => 1)
  Category.create(:id => 20, :name => 'Kundan Jewellery', :parent_id => 1)
  Category.create(:id => 21, :name => 'Lac Jewellery', :parent_id => 1)
  Category.create(:id => 22, :name => 'Meenakari Jewellery', :parent_id => 1)
  Category.create(:id => 23, :name => 'Navratna Jewellery', :parent_id => 1)
  Category.create(:id => 24, :name => 'Pachchikam Jewellery', :parent_id => 1)
  Category.create(:id => 25, :name => 'Stone Jewellery', :parent_id => 1)
  Category.create(:id => 26, :name => 'Temple Jewellery', :parent_id => 1)
  Category.create(:id => 27, :name => 'Tribal Jewellery', :parent_id => 1)

  #Clothing
  Category.create(:id => 28, :name => 'Men', :parent_id => 2)
  Category.create(:id => 29, :name => 'Women', :parent_id => 2)
  Category.create(:id => 30, :name => 'Kids', :parent_id => 2)

  #Home Alliance
  Category.create(:id => 31, :name => 'Home decor', :parent_id => 3)
  Category.create(:id => 32, :name => 'FURNISHINGS', :parent_id => 3)
  Category.create(:id => 33, :name => 'HOME IMPROVEMENT', :parent_id => 3)
  Category.create(:id => 34, :name => 'KITCHEN & DINING', :parent_id => 3)

  #Men's Footwear
  Category.create(:id => 35, :name => "MEN'S FOOTWEAR", :parent_id => 4)
  Category.create(:id => 36, :name => "WOMEN'S FOOTWEAR", :parent_id => 4)
  

  #Accessories
  Category.create(:id => 37, :name => 'WOMEN', :parent_id => 5)
  Category.create(:id => 38, :name => 'Men', :parent_id => 5)
  Category.create(:id => 39, :name => 'TRAVEL & LUGGAGE', :parent_id => 5)


  #Gift
  Category.create(:id => 40, :name => 'Greeting Cards', :parent_id => 6)
  Category.create(:id => 41, :name => 'Office Accessories', :parent_id => 6)
  Category.create(:id => 42, :name => 'Personalized Gifts', :parent_id => 6)
  Category.create(:id => 43, :name => 'Soft Toys', :parent_id => 6)
  Category.create(:id => 44, :name => 'Fashion Accessories', :parent_id => 6)
  Category.create(:id => 45, :name => 'Day Special', :parent_id => 6)

  #Child Category Section
  #Cloth Men
  Category.create(:id => 46, :name => 'Shirts', :parent_id => 28)
  Category.create(:id => 47, :name => 'Fashion Hoodies & Sweatshirts', :parent_id => 28)
  Category.create(:id => 48, :name => 'Sweaters', :parent_id => 28)
  Category.create(:id => 49, :name => 'Jackets & Coats', :parent_id => 28)
  Category.create(:id => 50, :name => 'Jeans', :parent_id => 28)
  Category.create(:id => 51, :name => 'Pants', :parent_id => 28)
  Category.create(:id => 52, :name => 'Shorts', :parent_id => 28)
  Category.create(:id => 53, :name => 'Active', :parent_id => 28)
  Category.create(:id => 54, :name => 'Swim', :parent_id => 28)
  Category.create(:id => 55, :name => 'Suits & Sport Coats', :parent_id => 28)
  Category.create(:id => 56, :name => 'Underwear', :parent_id => 28)
  Category.create(:id => 57, :name => 'Socks', :parent_id => 28)
  Category.create(:id => 58, :name => 'Sleep & Lounge', :parent_id => 28)

  #cloth women
  Category.create(:id => 59, :name => 'Dresses', :parent_id => 29)
  Category.create(:id => 60, :name => 'Tops & Tees', :parent_id => 29)
  Category.create(:id => 61, :name => 'Sweaters', :parent_id => 29)
  Category.create(:id => 62, :name => 'Fashion Hoodies & Sweatshirts', :parent_id => 29)
  Category.create(:id => 63, :name => 'Jeans', :parent_id => 29)
  Category.create(:id => 64, :name => 'Pants', :parent_id => 29)
  Category.create(:id => 65, :name => 'Skirts', :parent_id => 29)
  Category.create(:id => 66, :name => 'Shorts', :parent_id => 29)
  Category.create(:id => 67, :name => 'Leggings', :parent_id => 29)
  Category.create(:id => 68, :name => 'Active', :parent_id => 29)
  Category.create(:id => 69, :name => 'Lingerie, Sleep & Lounge', :parent_id => 29)
  Category.create(:id => 70, :name => 'Jumpsuits, Rompers & Overalls', :parent_id => 29)
  Category.create(:id => 71, :name => 'Coats & Jackets', :parent_id => 29)
  Category.create(:id => 72, :name => 'Suiting & Blazers', :parent_id => 29)
  Category.create(:id => 73, :name => 'Socks & Hosiery', :parent_id => 29)

  #clothes Kids
  Category.create(:id => 74, :name => 'Sweaters & Sweatshirts', :parent_id => 30)
  Category.create(:id => 75, :name => 'Rompers', :parent_id => 30)
  Category.create(:id => 76, :name => 'T-shirts', :parent_id => 30)
  Category.create(:id => 77, :name => 'Frocks & Dresses', :parent_id => 30)
  Category.create(:id => 78, :name => 'Combos', :parent_id => 30)
  Category.create(:id => 79, :name => 'Jeans', :parent_id => 30)
  Category.create(:id => 80, :name => 'Clothing Sets', :parent_id => 30)
  Category.create(:id => 81, :name => 'Nightwear', :parent_id => 30)
  
  #Home Alliance, home decore
  Category.create(:id => 82, :name => 'Clocks', :parent_id => 31)
  Category.create(:id => 83, :name => 'Handicrafts', :parent_id => 31)
  Category.create(:id => 84, :name => 'Wall Décor', :parent_id => 31)
  Category.create(:id => 85, :name => 'Artifacts', :parent_id => 31)
  Category.create(:id => 86, :name => 'Photo Frames', :parent_id => 31)
  Category.create(:id => 87, :name => 'Vases & Flowers', :parent_id => 31)
  Category.create(:id => 88, :name => 'Paintings', :parent_id => 31)
  Category.create(:id => 89, :name => 'Candle Holders', :parent_id => 31)

  #home alliance, furnishing
  Category.create(:id => 90, :name => 'Bed Linen', :parent_id => 32)
  Category.create(:id => 91, :name => 'Living Room', :parent_id => 32)
  Category.create(:id => 92, :name => 'Curtains', :parent_id => 32)
  Category.create(:id => 93, :name => 'Bath Linen', :parent_id => 32)
  Category.create(:id => 94, :name => 'Table Linen', :parent_id => 32)
  Category.create(:id => 95, :name => 'Flooring', :parent_id => 32)
  Category.create(:id => 96, :name => 'Kids Furnishings', :parent_id => 32)
  Category.create(:id => 97, :name => 'Furnishing Combos', :parent_id => 32)

  #home alliance, home improvements 33

  Category.create(:id => 98, :name => 'Bathroom Accessories', :parent_id => 33)
  Category.create(:id => 99, :name => 'Cleaning Utilities', :parent_id => 33)
  Category.create(:id => 100, :name => 'Tools & Kits', :parent_id => 33)
  Category.create(:id => 101, :name => 'Lighting', :parent_id => 33)
  Category.create(:id => 102, :name => 'Garden Tools & Machines', :parent_id => 33)
  Category.create(:id => 103, :name => 'Lockers & Safes', :parent_id => 33)
  Category.create(:id => 104, :name => 'Cloth Dryers', :parent_id => 33)
  Category.create(:id => 105, :name => 'Dustbins', :parent_id => 33)

  #home alliance, kitchen dinnings 34
  Category.create(:id => 106, :name => 'Cookware', :parent_id => 34)
  Category.create(:id => 107, :name => 'Kitchenware', :parent_id => 34)
  Category.create(:id => 108, :name => 'Bake ware', :parent_id => 34)
  Category.create(:id => 109, :name => 'Kitchen combos', :parent_id => 34)
  Category.create(:id => 110, :name => 'Serve ware', :parent_id => 34)
  Category.create(:id => 111, :name => 'Cook & serve pots', :parent_id => 34)
  Category.create(:id => 112, :name => 'Bar accessories', :parent_id => 34)
  Category.create(:id => 113, :name => 'Kitchen Storage', :parent_id => 34)

  #men's footwear men's footwear
  Category.create(:id => 114, :name => 'Casual Shoes', :parent_id => 35)
  Category.create(:id => 115, :name => 'Sports Shoes', :parent_id => 35)
  Category.create(:id => 116, :name => 'Formal Shoes', :parent_id => 35)
  Category.create(:id => 117, :name => 'Sandals', :parent_id => 35)
  Category.create(:id => 118, :name => 'Slippers & Flip Flops', :parent_id => 35)
  Category.create(:id => 119, :name => 'Loafers', :parent_id => 35)
  Category.create(:id => 120, :name => 'Combos', :parent_id => 35)
  Category.create(:id => 121, :name => "Boys' Footwear", :parent_id => 35)

  #men's footwear women's footwear
  Category.create(:id => 122, :name => 'Sandals', :parent_id => 36)
  Category.create(:id => 123, :name => 'Ballerinas', :parent_id => 36)
  Category.create(:id => 124, :name => 'Wedges', :parent_id => 36)
  Category.create(:id => 125, :name => 'Pumps', :parent_id => 36)
  Category.create(:id => 126, :name => 'Casual Shoes', :parent_id => 36)
  Category.create(:id => 127, :name => 'Peep Toes', :parent_id => 36)
  Category.create(:id => 128, :name => 'Slippers & Flip Flops', :parent_id => 36)
  Category.create(:id => 129, :name => 'Sports Shoes', :parent_id => 36)
  Category.create(:id => 130, :name => "Girls' Footwear", :parent_id => 36)

  #Accesssories women  
  Category.create(:id => 131, :name => 'Handbags', :parent_id => 37)
  Category.create(:id => 132, :name => 'Purses & Clutches', :parent_id => 37)
  Category.create(:id => 133, :name => 'Gift Combos', :parent_id => 37)
  Category.create(:id => 134, :name => 'Scarves & Stoles', :parent_id => 37)
  Category.create(:id => 135, :name => 'Sunglasses', :parent_id => 37)
  Category.create(:id => 136, :name => 'Belts', :parent_id => 37)
  Category.create(:id => 137, :name => 'Hair Accessories', :parent_id => 37)
  Category.create(:id => 138, :name => 'Caps & Hats', :parent_id => 37)

  #Accesssories men  
  Category.create(:id => 139, :name => 'Backpacks & Laptop Bags', :parent_id => 38)
  Category.create(:id => 140, :name => 'Wallets', :parent_id => 38)
  Category.create(:id => 141, :name => 'Gift Combos', :parent_id => 38)
  Category.create(:id => 142, :name => 'Sunglasses', :parent_id => 38)
  Category.create(:id => 143, :name => 'Belts', :parent_id => 38)
  Category.create(:id => 144, :name => 'Ties & Cufflinks', :parent_id => 38)
  Category.create(:id => 145, :name => 'Caps & Hats', :parent_id => 38)
  Category.create(:id => 146, :name => 'Scarves & Stoles', :parent_id => 38)

  #accessories, TRAVEL & LUGGAGE
  Category.create(:id => 147, :name => 'Trolley Bags & Suitcases', :parent_id => 39)
  Category.create(:id => 148, :name => 'Travel Combos', :parent_id => 39)
  Category.create(:id => 149, :name => 'Duffle Bags', :parent_id => 39)
  Category.create(:id => 150, :name => 'Travel Accessories', :parent_id => 39)
  Category.create(:id => 151, :name => 'Passport & Card Holders', :parent_id => 39)
  Category.create(:id => 152, :name => 'Burdy', :parent_id => 39)
  Category.create(:id => 153, :name => 'Fashion', :parent_id => 39)
  
  
  #Gift, Greeting Cards
  Category.create(:id => 154, :name => 'Easter Cards', :parent_id => 40)
  Category.create(:id => 155, :name => 'Birthday', :parent_id => 40)
  Category.create(:id => 156, :name => 'Anniversary', :parent_id => 40)
  Category.create(:id => 157, :name => 'Personalised Cards', :parent_id => 40)
  Category.create(:id => 158, :name => 'Love', :parent_id => 40)
  Category.create(:id => 159, :name => 'Wedding', :parent_id => 40)
  Category.create(:id => 160, :name => 'Congratulations', :parent_id => 40)
  Category.create(:id => 161, :name => 'Good Bye', :parent_id => 40)
  Category.create(:id => 162, :name => 'Thank You', :parent_id => 40)
  Category.create(:id => 163, :name => 'New Venture', :parent_id => 40)
  Category.create(:id => 164, :name => 'Retirement', :parent_id => 40)
  Category.create(:id => 165, :name => 'Promotion', :parent_id => 40)
  Category.create(:id => 166, :name => 'Good Luck', :parent_id => 40)

 #Gift, office accessories
  Category.create(:id => 167, :name => 'Pens', :parent_id => 41)
  Category.create(:id => 168, :name => 'Notebooks', :parent_id => 41)
  Category.create(:id => 169, :name => 'Calendars', :parent_id => 41)
  Category.create(:id => 170, :name => 'Fun Signs', :parent_id => 41)
  Category.create(:id => 171, :name => 'Quotation Books', :parent_id => 41)
  Category.create(:id => 172, :name => 'Albums', :parent_id => 41)
  Category.create(:id => 173, :name => 'Collection Albums', :parent_id => 41)
  Category.create(:id => 174, :name => 'Autograph Books', :parent_id => 41)
  Category.create(:id => 175, :name => 'Posters', :parent_id => 41)
  Category.create(:id => 176, :name => 'Cry', :parent_id => 41)
  Category.create(:id => 177, :name => 'Helpage, unicef', :parent_id => 41)

  #Gift, Personalized Gifts
  Category.create(:id => 178, :name => 'Greeting Cards', :parent_id => 42)
  Category.create(:id => 179, :name => 'Accessories', :parent_id => 42)
  Category.create(:id => 180, :name => 'Cushions & Pillows', :parent_id => 42)
  Category.create(:id => 181, :name => 'Granite Stones', :parent_id => 42)
  Category.create(:id => 182, :name => 'Mugs', :parent_id => 42)
  Category.create(:id => 183, :name => 'Personalised Combos', :parent_id => 42)
  Category.create(:id => 184, :name => 'Photo Frames', :parent_id => 42)


  
  #Gift, Soft Toys
  Category.create(:id => 185, :name => 'Teddy Bears', :parent_id => 43)
  Category.create(:id => 186, :name => 'Heart Cushions', :parent_id => 43)
  Category.create(:id => 187, :name => 'Pets & Animals', :parent_id => 43)


   #Gift, Fashion Accessories
  Category.create(:id => 188, :name => 'Scarves', :parent_id => 44)
  Category.create(:id => 189, :name => 'Passport Holders', :parent_id => 44)
  Category.create(:id => 190, :name => 'Perfumes', :parent_id => 44)
  Category.create(:id => 191, :name => 'Key Chains', :parent_id => 44)
  Category.create(:id => 192, :name => 'Watches', :parent_id => 44)
  Category.create(:id => 193, :name => 'Sunglasses', :parent_id => 44)
  Category.create(:id => 194, :name => 'Gift Sets', :parent_id => 44)
  Category.create(:id => 195, :name => 'Card & Cigarette Holders', :parent_id => 44)
  Category.create(:id => 196, :name => 'Bags & Wallets', :parent_id => 44)


   #Gift, Day Special
  Category.create(:id => 197, :name => 'Baisakhi - 13 Apr', :parent_id => 45)
  Category.create(:id => 198, :name => 'Love & Romance', :parent_id => 45)
  Category.create(:id => 199, :name => 'Easter - 05 Apr', :parent_id => 45)
  Category.create(:id => 200, :name => "Women's Day - 08", :parent_id => 45)
  Category.create(:id => 201, :name => 'Mar Holi - 06 Mar', :parent_id => 45)
  Category.create(:id => 202, :name => "Valentine's Day - 14", :parent_id => 45)
  Category.create(:id => 203, :name => 'Feb Kiss Day - 13', :parent_id => 45)
  Category.create(:id => 204, :name => 'Feb Hug Day - 12', :parent_id => 45)
  Category.create(:id => 205, :name => 'Feb Promise Day - 11', :parent_id => 45)
  Category.create(:id => 206, :name => 'Feb Teddy Day - 10', :parent_id => 45)
  Category.create(:id => 207, :name => 'Feb Chocolate Day - 9 Feb', :parent_id => 45)
  Category.create(:id => 208, :name => 'Birthday', :parent_id => 45)
  Category.create(:id => 209, :name => 'Propose Day - 8 Feb', :parent_id => 45)
  Category.create(:id => 210, :name => 'Lohri - 13 Jan', :parent_id => 45)
  Category.create(:id => 211, :name => 'Anniversary Wedding', :parent_id => 45)
  Category.create(:id => 212, :name => 'New Year', :parent_id => 45)
  Category.create(:id => 213, :name => 'Thank You', :parent_id => 45)
  Category.create(:id => 214, :name => 'Christmas - 25 Dec', :parent_id => 45)
  Category.create(:id => 215, :name => "Children's Day - 14", :parent_id => 45)
  Category.create(:id => 216, :name => 'Nov Bhai Dooj - 25', :parent_id => 45)
  Category.create(:id => 217, :name => 'Oct Diwali - 23 Oct', :parent_id => 45)
  Category.create(:id => 218, :name => 'Boss Day - 16 Oct', :parent_id => 45)
  Category.create(:id => 219, :name => 'Karva Chauth - 11 Oct', :parent_id => 45)
  Category.create(:id => 220, :name => 'Rose Day - 7 Feb', :parent_id => 45)
  Category.create(:id => 221, :name => 'Daughters Day - 28 Sep', :parent_id => 45)
  Category.create(:id => 222, :name => 'Mothers Day - 10 May', :parent_id => 45)
  Category.create(:id => 223, :name => 'Teachers Day – 05 Sep', :parent_id => 45)
  Category.create(:id => 224, :name => 'Eid-Ul-Fitr', :parent_id => 45)
  Category.create(:id => 225, :name => 'Rakhi - 10 Aug ', :parent_id => 45)
  Category.create(:id => 226, :name => 'Friendship Day', :parent_id => 45)
  Category.create(:id => 227, :name => 'Fathers Day', :parent_id => 45)
end
