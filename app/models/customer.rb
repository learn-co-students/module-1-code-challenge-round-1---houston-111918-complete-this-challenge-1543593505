class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all 
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    #Returns a unique array of all restaurants a customer has reviewed
    reviews.map(&:restaurant)
  end

  def self.find_by_name(n)
    # given a string of a full name, returns the first customer whose full name matches
    Customer.all.select do |customer| 
      if customer.full_name.include?(n)
        customer
      end
  end
  end

  def self.find_all_by_first_name(n)
    #given a string of a first name, returns an array containing all customers with that first name
    Customer.all.find_all {|name| name.first_name.downcase.include?(n.downcase)}
  end

  def self.all_names
    # should return an array of all of the customer full names
    array = []
    Customer.all.collect do |customer|
      array << customer.full_name
    end
    array 
  end

  def add_review(restaurant, content, rating)
    #given a restaurant object, some review content (as a string), 
    #and a star rating (as an integer), 
    #creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    #Returns the total number of reviews that a customer has authored
    reviews.length
  end


end
