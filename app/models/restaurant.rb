class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    reviews.map(&:customer)
  end

  def self.find_by_name(restaurant_name)
    self.all.find {|r| r.name == restaurant_name}
  end


  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
    total = 0.0
    num_of_reviews = 0.0

    self.reviews.each do |r| 
      total += r.rating
      num_of_reviews += 1
    end

    total/num_of_reviews
  end

  def longest_review
  #returns the longest review content for a given restaurant


  end
  #binding.pry 
  #{|r| counter +=r.rating


end
