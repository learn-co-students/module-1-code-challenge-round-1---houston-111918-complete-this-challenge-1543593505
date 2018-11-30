require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'

c1 = Customer.new("Steve", "Jobs")
c2 = Customer.new("Tim", "Cook")
c3 = Customer.new("Bill", "Gates")
c4 = Customer.new("Francisco", "Banda")
c5 = Customer.new("Bill", "Nye")


r1 = Restaurant.new("Chilis")
r2 = Restaurant.new("Dennys")
r3 = Restaurant.new("Fridays")
r4 = Restaurant.new("Lubys")

review_1 = Review.new(c1, r1, 5, "Great Service!")
review_2 = Review.new(c2, c2, 2, "Wait time was long")
review_3 = Review.new(c3, c3, 4, "Food was awesome!")
review_4 = Review.new(c4, r4, 2, "Staff was rude")
review_5 = Review.new(c5, r3, 4, "Salsa is hot")
review_6 = Review.new(c1, r3, 3, "It was okay")








# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line