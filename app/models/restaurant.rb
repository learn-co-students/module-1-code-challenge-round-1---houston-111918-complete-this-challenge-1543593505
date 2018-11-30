require 'pry'

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
    #returns an array of all reviews for that restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    #Returns a unique list of all customers who have reviewed a particular restaurant.
      reviews.map(&:customer)
    # end
  end

  def self.find_by_name(n)
    #given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.select do |restaurant| 
      if restaurant.name.downcase.include?(n.downcase)
        restaurant
      end
  end
  end

  def average_star_rating
    total = 0
    length = 0
    ratings = Review.all.select do |review|
      review.restaurant == self
    end
    ratings.map do |r|
      total += r.rating
      length += 1
    end
    return total/length

  end

  def longest_review
  #returns the longest review content for a given restaurant
  rev = nil
  longest = 0
  ratings = Review.all.select do |review|
    review.restaurant == self
  end
  ratings.map do |r|
    if r.content.length > longest
    rev = r.content
  end
  end
  

end
