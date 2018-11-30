require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Michael", "Jackson")
c2 = Customer.new("Lebron", "James")
c3 = Customer.new("Kobe", "Bryant")
c4 = Customer.new("Reggie", "Miller")
c5 = Customer.new("Allen", "Iverson")

r1 = Restaurant.new("Roscoe's Chicken & Waffles")
r2 = Restaurant.new("Jinya Ramen")
r3 = Restaurant.new("The Brazilian Steakhouse")
r4 = Restaurant.new("The Catfish Hole")
r5 = Restaurant.new("Buffalo Wild Wings")

rv1 = Review.new(c1,r5, "It's sucks", 2)
rv2 = Review.new(c2,r1, "It's great", 5)
rv3 = Review.new(c4,r2, "It was excellent", 5)
rv4 = Review.new(c3,r4, "It was ok", 3)
rv5 = Review.new(c5,r3, "It was pretty good", 4)

jack = Review.new(r2, "Blah, Blah", 3)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line