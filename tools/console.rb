

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("David", "Wolfe")
customer2 = Customer.new("Dan", "Daniels")
customer3 = Customer.new("John", "Smith")
customer4 = Customer.new("Jacob", "Miller")


rest1 = Restaurant.new("Carrabas")
rest2 = Restaurant.new("Wendys Fast Food")
rest3 = Restaurant.new("Chipotle")
rest4 = Restaurant.new("Jack in the Box")


rev1 = Review.new(customer1, rest1)
rev2 = Review.new(customer2, rest2)
rev3 = Review.new(customer3, rest3)
rev4 = Review.new(customer4, rest4)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line