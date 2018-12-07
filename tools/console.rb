require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

leo = Customer.new("Leonardo", "DeCaprio")
joaquin = Customer.new("Joaquin", "Phoenix")
ben = Customer.new("Ben", "Affleck")
betty = Customer.new("Betty", "Davis")
betty_2 = Customer.new("Betty", "Save-us!")

torchys = Restaurant.new("Torchy's")
wendys = Restaurant.new("Wendy's")
burger = Restaurant.new("Burger Hut")
ihop = Restaurant.new("Stomach Ache")

review_1 = Review.new(leo, torchys, 8,
  "This place owns.")
review_2 = Review.new(joaquin, torchys, 6,
  "meh")
review_3 = Review.new(ben, wendys, 3,
  "i thought wendys had waiters?")
review_4 = Review.new(joaquin, wendys, 5,
  "my waiter was mean. didn't even know wendys had waiters.")
review_5 = Review.new(betty, burger, 10,
  "this place sucks. UPDATE: this place owns")
review_6 = Review.new(betty, ihop, 1,
  "internation house of stomach aches is more like it")
review_7 = Review.new(ben, ihop, 7,
  "very worldy and international.")
review_8 = Review.new(leo, burger, 3,
  "my burger was actually a french fry")
review_9 = Review.new(leo, ihop, 0,
  "pancakes came sopping wet. like they just came out of the wash or something.")


binding.pry
0 #left this here to ensure binding.pry isn't the last line