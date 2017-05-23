brand = Brand.new(name:"Nihola")

brand.save

brand_model = BrandModel.new(name:"Family")

brand_model.brand = brand

brand_model.save

bike1 = Bike.new(color:"red",electric:false, daily_price_in_cents:3000, description:"This beauty is sleeping in my garage since my kids learned to bike! But it's a gift and I can't let it go. Take good care of it and enjoy!",address:"Kgs Nytorv, 2200 Copenhagen")

bike1.brand_model = brand_model

user1 = User.new(email: "weed@dudu.com", password: "123456ei")

bike1.user = user1

bike1.save


brand2 = Brand.new(name:"Christinia bike")
brand2.save

brand3 = Brand.new(name:"Winther")
brand3.save


brand_model2 = BrandModel.new(name:"Dog")
brand_model2.brand = brand
brand_model2.save

brand_model3 = BrandModel.new(name:"Sport")
brand_model3.brand = brand2
brand_model3.save

brand_model4 = BrandModel.new(name:"Light")
brand_model4.brand = brand2
brand_model4.save

brand_model5 = BrandModel.new(name:"Kangaroo lite")
brand_model5.brand = brand3
brand_model5.save

brand_model6 = BrandModel.new(name:"Kangaroo luxe")
brand_model6.brand = brand3
brand_model6.save


user2 = User.new(email: "wuhu@dudu.com", password: "123455")
user3 = User.new(email: "wihi@dudu.com", password: "123454")
user4 = User.new(email: "huhu@dudu.com", password: "123453")
user5 = User.new(email: "brum@dudu.com", password: "123452")
user6 = User.new(email: "boby@dudu.com", password: "123451")
user7 = User.new(email: "bob@dudu.com", password: "123450")
user8 = User.new(email: "lars@dudu.com", password: "123457")
user9 = User.new(email: "ana@dudu.com", password: "123458")
user10 = User.new(email: "vivi@dudu.com", password: "123459")
user11 = User.new(email: "livi@dudu.com", password: "1234510")
user12 = User.new(email: "viki@dudu.com", password: "1234561")
user13 = User.new(email: "cykelbabe@dudu.com", password: "1234562")
user14 = User.new(email: "matt@dudu.com", password: "1234563")
user15 = User.new(email: "alex@dudu.com", password: "1234564")


bike2 = Bike.new(color:"red",electric:false, daily_price_in_cents:3100, description:"This ugly beast",address:"Classensgade, 2100 Copenhagen")
bike2.brand_model = brand_model
bike2.user = user2
bike2.save

bike3 = Bike.new(color:"blue",electric:false, daily_price_in_cents:3200, description:"Nice ride",address:"Willemoesgade, 1200 Copenhagen")
bike3.brand_model = brand_model
bike3.user = user3
bike3.save

bike4 = Bike.new(color:"green",electric:false, daily_price_in_cents:3300, description:"Old and gracefull",address:"Noerrebrogade, 2200 Copenhagen")
bike4.brand_model = brand_model
bike4.user = user4
bike4.save

bike5 = Bike.new(color:"black",electric:false, daily_price_in_cents:3400, description:"Brand new",address:"Soenderbulevard, 2300 Copenhagen")
bike5.brand_model = brand_model
bike5.user = user5
bike5.save

bike6 = Bike.new(color:"white",electric:false, daily_price_in_cents:3500, description:"Join the fun ride!",address:"Vesterbro, 1674 Copenhagen")
bike6.brand_model = brand_model
bike6.user = user6
bike6.save

bike7 = Bike.new(color:"black",electric:false, daily_price_in_cents:3600, description:"Sweet family bike! Rent it for a weekend!",address:"Enghavevej, 1674 Copenhagen")
bike7.brand_model = brand_model
bike7.user = user7
bike7.save

bike8 = Bike.new(color:"red",electric:false, daily_price_in_cents:3700, description:"Sporty little beast!",address:"Kingos gade, 2000 Copenhagen")
bike8.brand_model = brand_model
bike8.user = user8
bike8.save

bike9 = Bike.new(color:"green",electric:false, daily_price_in_cents:3800, description:"Pets allowed! Take you puppy for a ride!",address:"Kongens Nytorv, 2000 Copenhagen")
bike9.brand_model = brand_model
bike9.user = user9
bike9.save

bike10 = Bike.new(color:"white",electric:false, daily_price_in_cents:3900, description:"Take a lovely bike trip in town!",address:"Norreport, 2100 Copenhagen")
bike10.brand_model = brand_model
bike10.user = user10
bike10.save


booking = Booking.new(start_date:Date.today+7,end_date:Date.today+15)
booking.bike = bike1
booking.user = user11
booking.save

booking2 = Booking.new(start_date:Date.today-21,end_date:Date.today-15)
booking2.bike = bike3
booking2.user = user12
booking2.save

booking3 = Booking.new(start_date:Date.today-18,end_date:Date.today-10)
booking3.bike = bike5
booking3.user = user13
booking3.save

booking4 = Booking.new(start_date:Date.today+7,end_date:Date.today+15)
booking4.bike = bike9
booking4.user = user14
booking4.save

