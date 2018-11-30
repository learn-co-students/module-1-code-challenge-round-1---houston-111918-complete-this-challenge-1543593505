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
    Review.all.select {|r| r.customer == self}
  end

  def restaurants 
    reviews.map(&:restaurant)
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end
 
  def num_reviews
    #Returns the total number of reviews that a customer has authored
    counter = 0
    self.reviews.each {|r| counter += 1}
    counter
  end
  

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.all_names
    # should return an array of all of the customer full names
    self.all.map(&:full_name)
  end


  def self.find_all_by_first_name(name)
    #  given a string of a first name, returns an array containing all customers with that first name
    self.all.select {|c| c.first_name == name}
  end

  def self.find_by_name(customer_name)
    # given a string of a full name, returns the first customer whose full name matches
    self.all.find {|c| c.full_name == customer_name}
  end

end
