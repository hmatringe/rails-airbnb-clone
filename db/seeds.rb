brand = Brand.new(name:"Nihola")
brand.save
brand_model = BrandModel.new(name:"The Wagon")
brand_model.brand = brand
brand_model.save
bike1 = Bike.new(color:"red",electric:false, daily_price_in_cents:3000, description:"This beauty is sleeping in my garage since my kids learned to bike! But it's a gift and I can't let it go. Take good care of it and enjoy!",address:"Kgs Nytorv, 2200 Copenhagen")
bike1.brand_model = brand_model
bike1.user = User.last
bike1.save
booking = Booking.new(start_date:Date.today+7,end_date:Date.today+15)
booking.bike = bike1
booking.user = User.last
booking.save
