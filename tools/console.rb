require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

restaurant1 = Restaurant.new("ChickFilA")
restaurant2 = Restaurant.new("Hugos")
restaurant3 = Restaurant.new("Place")

customer1 = Customer.new("Emma", "Gouti")
customer1 = Customer.new("Emma", "Armer")
customer2 = Customer.new("Eddie", "Childres")
customer3 = Customer.new("John", "Grubbs")

review1 = Review.new(customer1, restaurant1, 5, "Great")
review1 = Review.new(customer1, restaurant2, 2, "Okay")
review1 = Review.new(customer3, restaurant2, 4, "Eh")
review2 = Review.new(customer2, restaurant3, 3, "Good")
review3 = Review.new(customer3, restaurant1, 4, "Cool")

addReview1 = customer1.add_review(restaurant3, "Nice", 3)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line