class Review
  attr_accessor :customer, :restaurant, :rating, :review_content
  
  @@all = []
  
  
  # customer, restaurant, rating=0,
  def initialize(customer, restaurant, rating, review_content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @review_content = review_content
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def customer
    # binding.pry
  end
  
end

