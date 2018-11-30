#joiner class
class Review
  attr_accessor :rating, :restaurant, :content
  attr_reader :customer
  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end

