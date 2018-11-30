require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


claire = Customer.new("Claire", "Nguyen")
david = Customer.new("David", "Wolfe")
austin = Customer.new("Austin", "Pucket")

mcd = Restaurant.new("McDonald's")
wb = Restaurant.new("Whataburger")
ino = Restaurant.new("In-n-Out")
fr = Restaurant.new("Fuddruckers")
bj = Restaurant.new("BJ's")

rev1 = Review.new(claire, ino, 4, "juicy")
rev2 = Review.new(claire, bj, 1, "slow service")
rev3 = Review.new(david, mcd, 2, "meh")
rev4 = Review.new(david, fr, 5, "fantastic!")
rev5 = Review.new(austin, wb, 3, "just average")
rev6 = Review.new(austin, bj, 4, "yumm")
rev8 = Review.new(austin, fr, 4, "delicious")
rev9 = Review.new(david, wb, 5, "what a burger!")

claire.add_review(fr, 5, "great")
david2 = Customer.new("David", "Number 2")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line