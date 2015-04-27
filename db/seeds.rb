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
  Category.create(:id => 4, :name => "Footwear")
  Category.create(:id => 5, :name => 'Accessories')
  Category.create(:id => 6, :name => 'Gift')
  
  #Jewellery
  SubCategory.create(:id => 1, :name => 'Gold', :category_id => 1)
  SubCategory.create(:id => 2, :name => 'Silver Jewellery', :category_id => 1)
  SubCategory.create(:id => 3, :name => 'Birthday Jewellery', :category_id => 1)
  SubCategory.create(:id => 4, :name => 'Antique Jewellery', :category_id => 1)
  SubCategory.create(:id => 5, :name => 'Bead Jewellery', :category_id => 1)
  SubCategory.create(:id => 6, :name => 'Bridal Jewellery', :category_id => 1)
  SubCategory.create(:id => 7, :name => 'Custom Jewellery', :category_id => 1)
  SubCategory.create(:id => 8, :name => 'Fashion Jewellery', :category_id => 1)
  SubCategory.create(:id => 9, :name => 'Filigree Jewellery', :category_id => 1)
  SubCategory.create(:id => 10, :name => 'Gold Jewellery', :category_id => 1)
  SubCategory.create(:id => 11, :name => 'Handmade Jewellery', :category_id => 1)
  SubCategory.create(:id => 12, :name => 'Ivory Jewellery', :category_id => 1)
  SubCategory.create(:id => 13, :name => 'Jadau Jewellery', :category_id => 1)
  SubCategory.create(:id => 14, :name => 'Kundan Jewellery', :category_id => 1)
  SubCategory.create(:id => 15, :name => 'Lac Jewellery', :category_id => 1)
  SubCategory.create(:id => 16, :name => 'Meenakari Jewellery', :category_id => 1)
  SubCategory.create(:id => 17, :name => 'Navratna Jewellery', :category_id => 1)
  SubCategory.create(:id => 18, :name => 'Pachchikam Jewellery', :category_id => 1)
  SubCategory.create(:id => 19, :name => 'Stone Jewellery', :category_id => 1)
  SubCategory.create(:id => 20, :name => 'Temple Jewellery', :category_id => 1)
  SubCategory.create(:id => 21, :name => 'Tribal Jewellery', :category_id => 1)

  #Clothing
  SubCategory.create(:id => 22, :name => 'Men', :category_id => 2)
  SubCategory.create(:id => 23, :name => 'Women', :category_id => 2)
  SubCategory.create(:id => 24, :name => 'Kids', :category_id => 2)

  #Home Alliance
  SubCategory.create(:id =>25, :name => 'Home decor', :category_id => 3)
  SubCategory.create(:id =>26, :name => 'FURNISHINGS', :category_id => 3)
  SubCategory.create(:id =>27, :name => 'HOME IMPROVEMENT', :category_id => 3)
  SubCategory.create(:id =>28, :name => 'KITCHEN & DINING', :category_id => 3)

  #Men's Footwear
  SubCategory.create(:id =>29, :name => "MEN'S FOOTWEAR", :category_id => 4)
  SubCategory.create(:id =>30, :name => "WOMEN'S FOOTWEAR", :category_id => 4)
  

  #Accessories
  SubCategory.create(:id =>31, :name => 'WOMEN', :category_id => 5)
  SubCategory.create(:id =>32,  :name => 'Men', :category_id => 5)
  SubCategory.create(:id =>33, :name => 'TRAVEL & LUGGAGE', :category_id => 5)


  #Gift
  SubCategory.create(:id => 34, :name => 'Greeting Cards', :category_id => 6)
  SubCategory.create(:id => 35, :name => 'Office Accessories', :category_id => 6)
  SubCategory.create(:id => 36, :name => 'Personalized Gifts', :category_id => 6)
  SubCategory.create(:id => 37, :name => 'Soft Toys', :category_id => 6)
  SubCategory.create(:id => 38, :name => 'Fashion Accessories', :category_id => 6)
  SubCategory.create(:id => 39, :name => 'Day Special', :category_id => 6)

  #Child Category Section
  #Cloth Men
  SubSubCategory.create(:id => 1, :name => 'Shirts', :sub_category_id => 22)
  SubSubCategory.create(:id => 2, :name => 'Fashion Hoodies & Sweatshirts', :sub_category_id => 22)
  SubSubCategory.create(:id => 3, :name => 'Sweaters', :sub_category_id => 22)
  SubSubCategory.create(:id => 4, :name => 'Jackets & Coats', :sub_category_id => 22)
  SubSubCategory.create(:id => 5, :name => 'Jeans', :sub_category_id => 22)
  SubSubCategory.create(:id => 6, :name => 'Pants', :sub_category_id => 22)
  SubSubCategory.create(:id => 7, :name => 'Shorts', :sub_category_id => 22)
  SubSubCategory.create(:id => 8, :name => 'Active', :sub_category_id => 22)
  SubSubCategory.create(:id => 9, :name => 'Swim', :sub_category_id => 22)
  SubSubCategory.create(:id => 10, :name => 'Suits & Sport Coats', :sub_category_id => 22)
  SubSubCategory.create(:id => 11, :name => 'Underwear', :sub_category_id => 22)
  SubSubCategory.create(:id => 12, :name => 'Socks', :sub_category_id => 22)
  SubSubCategory.create(:id => 13, :name => 'Sleep & Lounge', :sub_category_id => 22)

  #cloth women
  SubSubCategory.create(:id => 14, :name => 'Dresses', :sub_category_id => 23)
  SubSubCategory.create(:id => 15, :name => 'Tops & Tees', :sub_category_id => 23)
  SubSubCategory.create(:id => 16, :name => 'Sweaters', :sub_category_id => 23)
  SubSubCategory.create(:id => 17, :name => 'Fashion Hoodies & Sweatshirts', :sub_category_id => 23)
  SubSubCategory.create(:id => 18, :name => 'Jeans', :sub_category_id => 23)
  SubSubCategory.create(:id => 19, :name => 'Pants', :sub_category_id => 23)
  SubSubCategory.create(:id => 20, :name => 'Skirts', :sub_category_id => 23)
  SubSubCategory.create(:id => 21, :name => 'Shorts', :sub_category_id => 23)
  SubSubCategory.create(:id => 22, :name => 'Leggings', :sub_category_id => 23)
  SubSubCategory.create(:id => 23, :name => 'Active', :sub_category_id => 23)
  SubSubCategory.create(:id => 24, :name => 'Lingerie, Sleep & Lounge', :sub_category_id => 23)
  SubSubCategory.create(:id => 25, :name => 'Jumpsuits, Rompers & Overalls', :sub_category_id => 23)
  SubSubCategory.create(:id => 26, :name => 'Coats & Jackets', :sub_category_id => 23)
  SubSubCategory.create(:id => 27, :name => 'Suiting & Blazers', :sub_category_id => 23)
  SubSubCategory.create(:id => 28, :name => 'Socks & Hosiery', :sub_category_id => 23)

  #clothes Kids
  SubSubCategory.create(:id => 29, :name => 'Sweaters & Sweatshirts', :sub_category_id => 24)
  SubSubCategory.create(:id => 30, :name => 'Rompers', :sub_category_id => 24)
  SubSubCategory.create(:id => 31, :name => 'T-shirts', :sub_category_id => 24)
  SubSubCategory.create(:id => 32, :name => 'Frocks & Dresses', :sub_category_id => 24)
  SubSubCategory.create(:id => 33, :name => 'Combos', :sub_category_id => 24)
  SubSubCategory.create(:id => 34, :name => 'Jeans', :sub_category_id => 24)
  SubSubCategory.create(:id => 35, :name => 'Clothing Sets', :sub_category_id => 24)
  SubSubCategory.create(:id => 36, :name => 'Nightwear', :sub_category_id => 24)
  
  #Home Alliance, home decore
  SubSubCategory.create(:id => 37, :name => 'Clocks', :sub_category_id => 25)
  SubSubCategory.create(:id => 38, :name => 'Handicrafts', :sub_category_id => 25)
  SubSubCategory.create(:id => 39, :name => 'Wall Décor', :sub_category_id => 25)
  SubSubCategory.create(:id => 40, :name => 'Artifacts', :sub_category_id => 25)
  SubSubCategory.create(:id => 41, :name => 'Photo Frames', :sub_category_id => 25)
  SubSubCategory.create(:id => 42, :name => 'Vases & Flowers', :sub_category_id => 25)
  SubSubCategory.create(:id => 43, :name => 'Paintings', :sub_category_id => 25)
  SubSubCategory.create(:id => 44, :name => 'Candle Holders', :sub_category_id => 25)

  #home alliance, furnishi
  SubSubCategory.create(:id => 45, :name => 'Bed Linen', :sub_category_id => 26)
  SubSubCategory.create(:id => 46, :name => 'Living Room', :sub_category_id => 26)
  SubSubCategory.create(:id => 47, :name => 'Curtains', :sub_category_id => 26)
  SubSubCategory.create(:id => 48, :name => 'Bath Linen', :sub_category_id => 26)
  SubSubCategory.create(:id => 49, :name => 'Table Linen', :sub_category_id => 26)
  SubSubCategory.create(:id => 50, :name => 'Flooring', :sub_category_id => 26)
  SubSubCategory.create(:id => 51, :name => 'Kids Furnishings', :sub_category_id => 26)
  SubSubCategory.create(:id => 52, :name => 'Furnishing Combos', :sub_category_id => 26)

  #home alliance, home improvements 27

  SubSubCategory.create(:id => 53, :name => 'Bathroom Accessories', :sub_category_id => 27)
  SubSubCategory.create(:id => 54, :name => 'Cleaning Utilities', :sub_category_id => 27)
  SubSubCategory.create(:id => 55, :name => 'Tools & Kits', :sub_category_id => 27)
  SubSubCategory.create(:id => 56, :name => 'Lighting', :sub_category_id => 27)
  SubSubCategory.create(:id => 57, :name => 'Garden Tools & Machines', :sub_category_id => 27)
  SubSubCategory.create(:id => 58, :name => 'Lockers & Safes', :sub_category_id => 27)
  SubSubCategory.create(:id => 59, :name => 'Cloth Dryers', :sub_category_id => 27)
  SubSubCategory.create(:id => 60, :name => 'Dustbins', :sub_category_id => 27)

  #home alliance, kitchen dinnings 28
  SubSubCategory.create(:id => 61, :name => 'Cookware', :sub_category_id => 28)
  SubSubCategory.create(:id => 62, :name => 'Kitchenware', :sub_category_id => 28)
  SubSubCategory.create(:id => 63, :name => 'Bake ware', :sub_category_id => 28)
  SubSubCategory.create(:id => 64, :name => 'Kitchen combos', :sub_category_id => 28)
  SubSubCategory.create(:id => 65, :name => 'Serve ware', :sub_category_id => 28)
  SubSubCategory.create(:id => 66, :name => 'Cook & serve pots', :sub_category_id => 28)
  SubSubCategory.create(:id => 67, :name => 'Bar accessories', :sub_category_id => 28)
  SubSubCategory.create(:id => 68, :name => 'Kitchen Storage', :sub_category_id => 28)

  #men's footwear men's footwear
  SubSubCategory.create(:id => 69, :name => 'Casual Shoes', :sub_category_id => 29)
  SubSubCategory.create(:id => 70, :name => 'Sports Shoes', :sub_category_id => 29)
  SubSubCategory.create(:id => 71, :name => 'Formal Shoes', :sub_category_id => 29)
  SubSubCategory.create(:id => 72, :name => 'Sandals', :sub_category_id => 29)
  SubSubCategory.create(:id => 73, :name => 'Slippers & Flip Flops', :sub_category_id => 29)
  SubSubCategory.create(:id => 74, :name => 'Loafers', :sub_category_id => 29)
  SubSubCategory.create(:id => 75, :name => 'Combos', :sub_category_id => 29)
  SubSubCategory.create(:id => 76, :name => "Boys' Footwear", :sub_category_id => 29)

  #men's footwear women's footwear
  SubSubCategory.create(:id => 77, :name => 'Sandals', :sub_category_id => 30)
  SubSubCategory.create(:id => 78, :name => 'Ballerinas', :sub_category_id => 30)
  SubSubCategory.create(:id => 79, :name => 'Wedges', :sub_category_id => 30)
  SubSubCategory.create(:id => 80, :name => 'Pumps', :sub_category_id => 30)
  SubSubCategory.create(:id => 81, :name => 'Casual Shoes', :sub_category_id => 30)
  SubSubCategory.create(:id => 82, :name => 'Peep Toes', :sub_category_id => 30)
  SubSubCategory.create(:id => 83, :name => 'Slippers & Flip Flops', :sub_category_id => 30)
  SubSubCategory.create(:id => 84, :name => 'Sports Shoes', :sub_category_id => 30)
  SubSubCategory.create(:id => 85, :name => "Girls' Footwear", :sub_category_id => 30)

  #Accesssories women  
  SubSubCategory.create(:id => 86, :name => 'Handbags', :sub_category_id => 31)
  SubSubCategory.create(:id => 87, :name => 'Purses & Clutches', :sub_category_id => 31)
  SubSubCategory.create(:id => 88, :name => 'Gift Combos', :sub_category_id => 31)
  SubSubCategory.create(:id => 89, :name => 'Scarves & Stoles', :sub_category_id => 31)
  SubSubCategory.create(:id => 90, :name => 'Sunglasses', :sub_category_id => 31)
  SubSubCategory.create(:id => 91, :name => 'Belts', :sub_category_id => 31)
  SubSubCategory.create(:id => 92, :name => 'Hair Accessories', :sub_category_id => 31)
  SubSubCategory.create(:id => 93, :name => 'Caps & Hats', :sub_category_id => 31)

  #Accesssories men  
  SubSubCategory.create(:id => 94, :name => 'Backpacks & Laptop Bags', :sub_category_id => 32)
  SubSubCategory.create(:id => 95, :name => 'Wallets', :sub_category_id => 32)
  SubSubCategory.create(:id => 96, :name => 'Gift Combos', :sub_category_id => 32)
  SubSubCategory.create(:id => 97, :name => 'Sunglasses', :sub_category_id => 32)
  SubSubCategory.create(:id => 98, :name => 'Belts', :sub_category_id => 32)
  SubSubCategory.create(:id => 99, :name => 'Ties & Cufflinks', :sub_category_id => 32)
  SubSubCategory.create(:id => 100, :name => 'Caps & Hats', :sub_category_id => 32)
  SubSubCategory.create(:id => 101, :name => 'Scarves & Stoles', :sub_category_id => 32)

  #accessories, TRAVEL & LUGGAGE
  SubSubCategory.create(:id => 102, :name => 'Trolley Bags & Suitcases', :sub_category_id => 33)
  SubSubCategory.create(:id => 103, :name => 'Travel Combos', :sub_category_id => 33)
  SubSubCategory.create(:id => 104, :name => 'Duffle Bags', :sub_category_id => 33)
  SubSubCategory.create(:id => 105, :name => 'Travel Accessories', :sub_category_id => 33)
  SubSubCategory.create(:id => 106, :name => 'Passport & Card Holders', :sub_category_id => 33)
  SubSubCategory.create(:id => 107, :name => 'Burdy', :sub_category_id => 33)
  SubSubCategory.create(:id => 108, :name => 'Fashion', :sub_category_id => 33)
  
  
  #Gift, Greeting Cards
  SubSubCategory.create(:id => 109, :name => 'Easter Cards', :sub_category_id => 34)
  SubSubCategory.create(:id => 110, :name => 'Birthday', :sub_category_id => 34)
  SubSubCategory.create(:id => 111, :name => 'Anniversary', :sub_category_id => 34)
  SubSubCategory.create(:id => 112, :name => 'Personalised Cards', :sub_category_id => 34)
  SubSubCategory.create(:id => 113, :name => 'Love', :sub_category_id => 34)
  SubSubCategory.create(:id => 114, :name => 'Wedding', :sub_category_id => 34)
  SubSubCategory.create(:id => 115, :name => 'Congratulations', :sub_category_id => 34)
  SubSubCategory.create(:id => 116, :name => 'Good Bye', :sub_category_id => 34)
  SubSubCategory.create(:id => 117, :name => 'Thank You', :sub_category_id => 34)
  SubSubCategory.create(:id => 118, :name => 'New Venture', :sub_category_id => 34)
  SubSubCategory.create(:id => 119, :name => 'Retirement', :sub_category_id => 34)
  SubSubCategory.create(:id => 120, :name => 'Promotion', :sub_category_id => 34)
  SubSubCategory.create(:id => 121, :name => 'Good Luck', :sub_category_id => 34)

 #Gift, office accessories
 SubSubCategory.create(:id => 122, :name => 'Pens', :sub_category_id => 35)
 SubSubCategory.create(:id => 123, :name => 'Notebooks', :sub_category_id => 35)
 SubSubCategory.create(:id => 124, :name => 'Calendars', :sub_category_id => 35)
 SubSubCategory.create(:id => 125, :name => 'Fun Signs', :sub_category_id => 35)
 SubSubCategory.create(:id => 126, :name => 'Quotation Books', :sub_category_id => 35)
 SubSubCategory.create(:id => 127, :name => 'Albums', :sub_category_id => 35)
 SubSubCategory.create(:id => 128, :name => 'Collection Albums', :sub_category_id => 35)
 SubSubCategory.create(:id => 129, :name => 'Autograph Books', :sub_category_id => 35)
 SubSubCategory.create(:id => 130, :name => 'Posters', :sub_category_id => 35)
 SubSubCategory.create(:id => 131, :name => 'Cry', :sub_category_id => 35)
 SubSubCategory.create(:id => 132, :name => 'Helpage, unicef', :sub_category_id => 35)

  #Gift, Personalized Gifts
  SubSubCategory.create(:id => 133, :name => 'Greeting Cards', :sub_category_id => 36)
  SubSubCategory.create(:id => 134, :name => 'Accessories', :sub_category_id => 36)
  SubSubCategory.create(:id => 135, :name => 'Cushions & Pillows', :sub_category_id => 36)
  SubSubCategory.create(:id => 136, :name => 'Granite Stones', :sub_category_id => 36)
  SubSubCategory.create(:id => 137, :name => 'Mugs', :sub_category_id => 36)
  SubSubCategory.create(:id => 138, :name => 'Personalised Combos', :sub_category_id => 36)
  SubSubCategory.create(:id => 139, :name => 'Photo Frames', :sub_category_id => 36)
 
  #Gift, Soft Toys
  SubSubCategory.create(:id => 140, :name => 'Teddy Bears', :sub_category_id => 37)
  SubSubCategory.create(:id => 141, :name => 'Heart Cushions', :sub_category_id => 37)
  SubSubCategory.create(:id => 142, :name => 'Pets & Animals', :sub_category_id => 37)


   #Gift, Fashion Accessories
   SubSubCategory.create(:id => 143, :name => 'Scarves', :sub_category_id => 38)
   SubSubCategory.create(:id => 144, :name => 'Passport Holders', :sub_category_id => 38)
   SubSubCategory.create(:id => 145, :name => 'Perfumes', :sub_category_id => 38)
   SubSubCategory.create(:id => 146, :name => 'Key Chains', :sub_category_id => 38)
   SubSubCategory.create(:id => 147, :name => 'Watches', :sub_category_id => 38)
   SubSubCategory.create(:id => 148, :name => 'Sunglasses', :sub_category_id => 38)
   SubSubCategory.create(:id => 149, :name => 'Gift Sets', :sub_category_id => 38)
   SubSubCategory.create(:id => 150, :name => 'Card & Cigarette Holders', :sub_category_id => 38)
   SubSubCategory.create(:id => 151, :name => 'Bags & Wallets', :sub_category_id => 38)


   #Gift, Day Special
   SubSubCategory.create(:id => 152, :name => 'Baisakhi - 13 Apr', :sub_category_id => 39)
   SubSubCategory.create(:id => 153, :name => 'Love & Romance', :sub_category_id => 39)
   SubSubCategory.create(:id => 154, :name => 'Easter - 05 Apr', :sub_category_id => 39)
   SubSubCategory.create(:id => 155, :name => "Women's Day - 08", :sub_category_id => 39)
   SubSubCategory.create(:id => 156, :name => 'Mar Holi - 06 Mar', :sub_category_id => 39)
   SubSubCategory.create(:id => 157, :name => "Valentine's Day - 14", :sub_category_id => 39)
   SubSubCategory.create(:id => 158, :name => 'Feb Kiss Day - 13', :sub_category_id => 39)
   SubSubCategory.create(:id => 159, :name => 'Feb Hug Day - 12', :sub_category_id => 39)
   SubSubCategory.create(:id => 160, :name => 'Feb Promise Day - 11', :sub_category_id => 39)
   SubSubCategory.create(:id => 161, :name => 'Feb Teddy Day - 10', :sub_category_id => 39)
   SubSubCategory.create(:id => 162, :name => 'Feb Chocolate Day - 9 Feb', :sub_category_id => 39)
   SubSubCategory.create(:id => 163, :name => 'Birthday', :sub_category_id => 39)
   SubSubCategory.create(:id => 164, :name => 'Propose Day - 8 Feb', :sub_category_id => 39)
   SubSubCategory.create(:id => 165, :name => 'Lohri - 13 Jan', :sub_category_id => 39)
   SubSubCategory.create(:id => 166, :name => 'Anniversary Wedding', :sub_category_id => 39)
   SubSubCategory.create(:id => 167, :name => 'New Year', :sub_category_id => 39)
   SubSubCategory.create(:id => 168, :name => 'Thank You', :sub_category_id => 39)
   SubSubCategory.create(:id => 169, :name => 'Christmas - 25 Dec', :sub_category_id => 39)
   SubSubCategory.create(:id => 170, :name => "Children's Day - 14", :sub_category_id => 39)
   SubSubCategory.create(:id => 171, :name => 'Nov Bhai Dooj - 25', :sub_category_id => 39)
   SubSubCategory.create(:id => 172, :name => 'Oct Diwali - 23 Oct', :sub_category_id => 39)
   SubSubCategory.create(:id => 173, :name => 'Boss Day - 16 Oct', :sub_category_id => 39)
   SubSubCategory.create(:id => 174, :name => 'Karva Chauth - 11 Oct', :sub_category_id => 39)
   SubSubCategory.create(:id => 175, :name => 'Rose Day - 7 Feb', :sub_category_id => 39)
   SubSubCategory.create(:id => 176, :name => 'Daughters Day - 28 Sep', :sub_category_id => 39)
   SubSubCategory.create(:id => 177, :name => 'Mothers Day - 10 May', :sub_category_id => 39)
   SubSubCategory.create(:id => 178, :name => 'Teachers Day – 05 Sep', :sub_category_id => 39)
   SubSubCategory.create(:id => 179, :name => 'Eid-Ul-Fitr', :sub_category_id => 39)
   SubSubCategory.create(:id => 180, :name => 'Rakhi - 10 Aug ', :sub_category_id => 39)
   SubSubCategory.create(:id => 181, :name => 'Friendship Day', :sub_category_id => 39)
   SubSubCategory.create(:id => 182, :name => 'Fathers Day', :sub_category_id => 39)

  #Jwewllery sub-sub-cats Gold
  SubSubCategory.create(:id => 183, :name => 'Earrings', :sub_category_id => 1)
  SubSubCategory.create(:id => 184, :name => 'Rings', :sub_category_id => 1)
  SubSubCategory.create(:id => 185, :name => 'Pendants', :sub_category_id => 1)
  SubSubCategory.create(:id => 186, :name => 'Mangalsutras', :sub_category_id => 1)
  SubSubCategory.create(:id => 187, :name => 'Nose pins', :sub_category_id => 1)
  SubSubCategory.create(:id => 188, :name => 'Chains', :sub_category_id => 1)
  SubSubCategory.create(:id => 189, :name => 'Alphabet Pendants', :sub_category_id => 1)

  #Jwewllery sub-sub-cats Silver Jewelry  
  SubSubCategory.create(:id => 190, :name => 'Earrings', :sub_category_id => 2)
  SubSubCategory.create(:id => 191, :name => 'Rings', :sub_category_id => 2)
  SubSubCategory.create(:id => 192, :name => 'Pendants', :sub_category_id => 2)
  SubSubCategory.create(:id => 193, :name => 'Mangalsutras', :sub_category_id => 2)
  SubSubCategory.create(:id => 194, :name => 'Nose pins', :sub_category_id => 2)
  SubSubCategory.create(:id => 195, :name => 'Chains', :sub_category_id => 2)
  SubSubCategory.create(:id => 196, :name => 'Alphabet Pendants', :sub_category_id => 2)

  #Jwewllery sub-sub-cats Birthday Jewelry 
  SubSubCategory.create(:id => 197, :name => 'Earrings', :sub_category_id => 3)
  SubSubCategory.create(:id => 198, :name => 'Rings', :sub_category_id => 3)
  SubSubCategory.create(:id => 199, :name => 'Pendants', :sub_category_id => 3)
  SubSubCategory.create(:id => 200, :name => 'Mangalsutras', :sub_category_id => 3)
  SubSubCategory.create(:id => 201, :name => 'Nose pins', :sub_category_id => 3)
  SubSubCategory.create(:id => 202, :name => 'Chains', :sub_category_id => 3)
  SubSubCategory.create(:id => 203, :name => 'Alphabet Pendants', :sub_category_id => 3)

#Jwewllery sub-sub-cats Antique Jewelry
SubSubCategory.create(:id =>204, :name => 'Earrings', :sub_category_id => 4)
SubSubCategory.create(:id =>205, :name => 'Rings', :sub_category_id => 4)
SubSubCategory.create(:id =>206, :name => 'Pendants', :sub_category_id =>4)
SubSubCategory.create(:id =>207, :name => 'Mangalsutras', :sub_category_id => 4)
SubSubCategory.create(:id =>208, :name => 'Nose pins', :sub_category_id => 4)
SubSubCategory.create(:id =>209, :name => 'Chains', :sub_category_id => 4)
SubSubCategory.create(:id =>210, :name => 'Alphabet Pendants', :sub_category_id => 4)

#Jwewllery sub-sub-cats Bead Jewelry
SubSubCategory.create(:id =>211, :name => 'Earrings', :sub_category_id => 5)
SubSubCategory.create(:id =>212, :name => 'Rings', :sub_category_id => 5)
SubSubCategory.create(:id =>213, :name => 'Pendants', :sub_category_id => 5)
SubSubCategory.create(:id =>214, :name => 'Mangalsutras', :sub_category_id => 5)
SubSubCategory.create(:id =>215, :name => 'Nose pins', :sub_category_id => 5)
SubSubCategory.create(:id =>216, :name => 'Chains', :sub_category_id => 5)
SubSubCategory.create(:id =>217, :name => 'Alphabet Pendants', :sub_category_id => 5)

 #Jwewllery sub-sub-cats Bridal Jewelry
 SubSubCategory.create(:id =>218, :name => 'Earrings', :sub_category_id => 6)
 SubSubCategory.create(:id =>219, :name => 'Rings', :sub_category_id => 6)
 SubSubCategory.create(:id =>220, :name => 'Pendants', :sub_category_id => 6)
 SubSubCategory.create(:id =>221, :name => 'Mangalsutras', :sub_category_id => 6)
 SubSubCategory.create(:id =>222, :name => 'Nose pins', :sub_category_id => 6)
 SubSubCategory.create(:id =>223, :name => 'Chains', :sub_category_id => 6)
 SubSubCategory.create(:id =>224, :name => 'Alphabet Pendants', :sub_category_id => 6)

#Jwewllery sub-sub-cats Custom Jewellery
SubSubCategory.create(:id =>225, :name => 'Earrings', :sub_category_id => 7)
SubSubCategory.create(:id =>226, :name => 'Rings', :sub_category_id => 7)
SubSubCategory.create(:id =>227, :name => 'Pendants', :sub_category_id => 7)
SubSubCategory.create(:id =>228, :name => 'Mangalsutras', :sub_category_id => 7)
SubSubCategory.create(:id =>229, :name => 'Nose pins', :sub_category_id => 7)
SubSubCategory.create(:id =>230, :name => 'Chains', :sub_category_id => 7)
SubSubCategory.create(:id =>231, :name => 'Alphabet Pendants', :sub_category_id => 7)

#Jwewllery sub-sub-cats Fashion Jewellery
SubSubCategory.create(:id =>232, :name => 'Earrings', :sub_category_id => 8)
SubSubCategory.create(:id =>233, :name => 'Rings', :sub_category_id => 8)
SubSubCategory.create(:id =>234, :name => 'Pendants', :sub_category_id => 8)
SubSubCategory.create(:id =>235, :name => 'Mangalsutras', :sub_category_id => 8)
SubSubCategory.create(:id =>236, :name => 'Nose pins', :sub_category_id => 8)
SubSubCategory.create(:id =>237, :name => 'Chains', :sub_category_id => 8)
SubSubCategory.create(:id =>238, :name => 'Alphabet Pendants', :sub_category_id => 8)

#Jwewllery sub-sub-cats Filigree Jewellery
SubSubCategory.create(:id => 239, :name => 'Earrings', :sub_category_id => 9)
SubSubCategory.create(:id => 240, :name => 'Rings', :sub_category_id => 9)
SubSubCategory.create(:id => 241, :name => 'Pendants', :sub_category_id => 9)
SubSubCategory.create(:id => 242, :name => 'Mangalsutras', :sub_category_id => 9)
SubSubCategory.create(:id => 243, :name => 'Nose pins', :sub_category_id => 9)
SubSubCategory.create(:id => 244, :name => 'Chains', :sub_category_id => 9)
SubSubCategory.create(:id => 245, :name => 'Alphabet Pendants', :sub_category_id => 9)    

#Jwewllery sub-sub-cats Gold Jewellery
SubSubCategory.create(:id => 246, :name => 'Earrings', :sub_category_id => 10)
SubSubCategory.create(:id => 247, :name => 'Rings', :sub_category_id => 10)
SubSubCategory.create(:id => 248, :name => 'Pendants', :sub_category_id => 10)
SubSubCategory.create(:id => 249, :name => 'Mangalsutras', :sub_category_id => 10)
SubSubCategory.create(:id => 250, :name => 'Nose pins', :sub_category_id => 10)
SubSubCategory.create(:id => 251, :name => 'Chains', :sub_category_id => 10)
SubSubCategory.create(:id => 252, :name => 'Alphabet Pendants', :sub_category_id => 10)

#Jwewllery sub-sub-cats Handmade Jewellery
SubSubCategory.create(:id => 253, :name => 'Earrings', :sub_category_id => 11)
SubSubCategory.create(:id => 254, :name => 'Rings', :sub_category_id => 11)
SubSubCategory.create(:id => 255, :name => 'Pendants', :sub_category_id => 11)
SubSubCategory.create(:id => 256, :name => 'Mangalsutras', :sub_category_id => 11)
SubSubCategory.create(:id => 257, :name => 'Nose pins', :sub_category_id => 11)
SubSubCategory.create(:id => 258, :name => 'Chains', :sub_category_id => 11)
SubSubCategory.create(:id => 259, :name => 'Alphabet Pendants', :sub_category_id => 11)


#Jwewllery sub-sub-cats Ivory Jewellery
SubSubCategory.create(:id => 260, :name => 'Earrings', :sub_category_id => 12)
SubSubCategory.create(:id => 261, :name => 'Rings', :sub_category_id => 12)
SubSubCategory.create(:id => 262, :name => 'Pendants', :sub_category_id => 12)
SubSubCategory.create(:id => 263, :name => 'Mangalsutras', :sub_category_id => 12)
SubSubCategory.create(:id => 264, :name => 'Nose pins', :sub_category_id => 12)
SubSubCategory.create(:id => 265, :name => 'Chains', :sub_category_id => 12)
SubSubCategory.create(:id => 266, :name => 'Alphabet Pendants', :sub_category_id => 12)


#Jwewllery sub-sub-cats Jadau Jewellery
SubSubCategory.create(:id => 267, :name => 'Earrings', :sub_category_id => 13)
SubSubCategory.create(:id => 268, :name => 'Rings', :sub_category_id => 13)
SubSubCategory.create(:id => 269, :name => 'Pendants', :sub_category_id => 13)
SubSubCategory.create(:id => 270, :name => 'Mangalsutras', :sub_category_id => 13)
SubSubCategory.create(:id => 271, :name => 'Nose pins', :sub_category_id => 13)
SubSubCategory.create(:id => 272, :name => 'Chains', :sub_category_id => 13)
SubSubCategory.create(:id => 273, :name => 'Alphabet Pendants', :sub_category_id => 13)


#Jwewllery sub-sub-cats Kundan Jewellery
SubSubCategory.create(:id => 274, :name => 'Earrings', :sub_category_id =>14 )
SubSubCategory.create(:id => 275, :name => 'Rings', :sub_category_id => 14)
SubSubCategory.create(:id => 276, :name => 'Pendants', :sub_category_id => 14)
SubSubCategory.create(:id => 277, :name => 'Mangalsutras', :sub_category_id => 14)
SubSubCategory.create(:id => 278, :name => 'Nose pins', :sub_category_id => 14)
SubSubCategory.create(:id => 279, :name => 'Chains', :sub_category_id => 14)
SubSubCategory.create(:id => 280, :name => 'Alphabet Pendants', :sub_category_id => 14)


#Jwewllery sub-sub-cats Lac Jewellery
SubSubCategory.create(:id => 281, :name => 'Earrings', :sub_category_id => 15)
SubSubCategory.create(:id => 282, :name => 'Rings', :sub_category_id => 15)
SubSubCategory.create(:id => 283, :name => 'Pendants', :sub_category_id => 15)
SubSubCategory.create(:id => 284, :name => 'Mangalsutras', :sub_category_id => 15)
SubSubCategory.create(:id => 285, :name => 'Nose pins', :sub_category_id => 15)
SubSubCategory.create(:id => 286, :name => 'Chains', :sub_category_id => 15)
SubSubCategory.create(:id => 287, :name => 'Alphabet Pendants', :sub_category_id => 15)


#Jwewllery sub-sub-cats Meenakari Jewellery
SubSubCategory.create(:id => 288, :name => 'Earrings', :sub_category_id => 16)
SubSubCategory.create(:id => 289, :name => 'Rings', :sub_category_id => 16)
SubSubCategory.create(:id => 290, :name => 'Pendants', :sub_category_id => 16)
SubSubCategory.create(:id => 291, :name => 'Mangalsutras', :sub_category_id => 16)
SubSubCategory.create(:id => 292, :name => 'Nose pins', :sub_category_id => 16)
SubSubCategory.create(:id => 293, :name => 'Chains', :sub_category_id => 16)
SubSubCategory.create(:id => 294, :name => 'Alphabet Pendants', :sub_category_id => 16)                    

#Jwewllery sub-sub-cats Navratna Jewellery
SubSubCategory.create(:id => 295, :name => 'Earrings', :sub_category_id => 17)
SubSubCategory.create(:id => 296, :name => 'Rings', :sub_category_id => 17)
SubSubCategory.create(:id => 297, :name => 'Pendants', :sub_category_id => 17)
SubSubCategory.create(:id => 298, :name => 'Mangalsutras', :sub_category_id => 17)
SubSubCategory.create(:id => 299, :name => 'Nose pins', :sub_category_id => 17)
SubSubCategory.create(:id => 300, :name => 'Chains', :sub_category_id => 17)
SubSubCategory.create(:id => 301, :name => 'Alphabet Pendants', :sub_category_id => 17)   

#Jwewllery sub-sub-cats Pachchikam Jewellery
SubSubCategory.create(:id => 302, :name => 'Earrings', :sub_category_id => 18)
SubSubCategory.create(:id => 303, :name => 'Rings', :sub_category_id => 18)
SubSubCategory.create(:id => 304, :name => 'Pendants', :sub_category_id => 18)
SubSubCategory.create(:id => 305, :name => 'Mangalsutras', :sub_category_id => 18)
SubSubCategory.create(:id => 306, :name => 'Nose pins', :sub_category_id => 18)
SubSubCategory.create(:id => 307, :name => 'Chains', :sub_category_id => 18)
SubSubCategory.create(:id => 308, :name => 'Alphabet Pendants', :sub_category_id => 18)   

#Jwewllery sub-sub-cats Stone Jewellery
SubSubCategory.create(:id => 309, :name => 'Earrings', :sub_category_id => 19)
SubSubCategory.create(:id => 310, :name => 'Rings', :sub_category_id => 19)
SubSubCategory.create(:id => 311, :name => 'Pendants', :sub_category_id => 19)
SubSubCategory.create(:id => 312, :name => 'Mangalsutras', :sub_category_id => 19)
SubSubCategory.create(:id => 313, :name => 'Nose pins', :sub_category_id => 19)
SubSubCategory.create(:id => 314, :name => 'Chains', :sub_category_id => 19)
SubSubCategory.create(:id => 315, :name => 'Alphabet Pendants', :sub_category_id => 19)   

#Jwewllery sub-sub-cats Temple Jewellery
SubSubCategory.create(:id => 316, :name => 'Earrings', :sub_category_id => 20)
SubSubCategory.create(:id => 317, :name => 'Rings', :sub_category_id => 20)
SubSubCategory.create(:id => 318, :name => 'Pendants', :sub_category_id => 20)
SubSubCategory.create(:id => 319, :name => 'Mangalsutras', :sub_category_id => 20)
SubSubCategory.create(:id => 320, :name => 'Nose pins', :sub_category_id => 20)
SubSubCategory.create(:id => 321, :name => 'Chains', :sub_category_id => 20)
SubSubCategory.create(:id => 322, :name => 'Alphabet Pendants', :sub_category_id => 20)   

#Jwewllery sub-sub-cats Tribal Jewellery
SubSubCategory.create(:id => 323, :name => 'Earrings', :sub_category_id => 21)
SubSubCategory.create(:id => 324, :name => 'Rings', :sub_category_id => 21)
SubSubCategory.create(:id => 325, :name => 'Pendants', :sub_category_id => 21)
SubSubCategory.create(:id => 326, :name => 'Mangalsutras', :sub_category_id => 21)
SubSubCategory.create(:id => 327, :name => 'Nose pins', :sub_category_id => 21)
SubSubCategory.create(:id => 328, :name => 'Chains', :sub_category_id => 21)
SubSubCategory.create(:id => 329, :name => 'Alphabet Pendants', :sub_category_id => 21)                   
end
  