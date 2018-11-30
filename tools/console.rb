require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("John1","Doe1")
customer2 = Customer.new("John2","Doe2")
customer3 = Customer.new("John3","Doe3")
customer4 = Customer.new("John4","Doe4")
customer5 = Customer.new("John5","Doe5")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")
restaurant4 = Restaurant.new("Restaurant4")
restaurant5 = Restaurant.new("Restaurant5")

customer1.add_review(restaurant1, "content1", 1)
customer1.add_review(restaurant4, "content2", 5)
customer1.add_review(restaurant1, "LONGEST  content3", 6)
customer1.add_review(restaurant3, "content3", 6)
customer1.add_review(restaurant3, "content3", 6)
customer1.add_review(restaurant3, "content3", 6)
customer2.add_review(restaurant1, "IAMNOWTHELONGESTTESTcontent4", 10)
customer2.add_review(restaurant2, "content5", 10)
customer3.add_review(restaurant5, "content6", 9)
customer3.add_review(restaurant3, "content7", 7)
customer3.add_review(restaurant4, "content8", 8)
customer3.add_review(restaurant2, "content9", 5)
customer4.add_review(restaurant2, "content10", 3)
customer5.add_review(restaurant5, "content11", 2)
customer5.add_review(restaurant1, "content12", 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
