require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


ihop = Restaurant.new('IHOP')
mcdon = Restaurant.new('McDonalds')
den = Restaurant.new("Denny's")
pizza = Restaurant.new('Pizza Hut')
olive = Restaurant.new('Olive Garden')
fuzz = Restaurant.new("Fuzzy's Tacos")


emma = Customer.new('Emma', 'Gouti')
ryan = Customer.new('Ryan', 'Daley')
fran = Customer.new('Francisco', 'Banda')
jakob = Customer.new('Jakob', 'Bellamy')
ryan2 = Customer.new('Ryan', 'Johnson')
emma2 = Customer.new('Emma', 'Greene')
fran2 = Customer.new('Francisco', '49ers')


rev1 = Review.new(emma, den, 3, "Good food")
rev2 = Review.new(jakob, ihop, 5, "Fun place")
rev3 = Review.new(fran, fuzz, 1, "Poor service")
rev4 = Review.new(ryan, mcdon, 0, "Wish I never ate here.")
rev5 = Review.new(emma, mcdon, 1, "Gross-o-mundo")
rev6 = Review.new(fran, pizza, 5, "Best place ever")
rev7 = Review.new(ryan, olive, 10, "Me gusta las fettuccine")

# rev1 = Review.new("Good food")
# rev2 = Review.new("Fun place")
# rev3 = Review.new("Poor service")
# rev4 = Review.new("Wish I never ate here.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line