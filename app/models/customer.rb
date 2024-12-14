class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def restaurants
    reviews.map{|review| review.restaurant}
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    counter = 0
    Review.all.each do |review|
      if review.customer == self
      counter += 1
      end
    end
    counter
  end

  def self.find_by_name(string)
    Customer.all.find{|customer| customer.full_name == string}
  end

  def self.find_all_by_first_name(string)
    Customer.all.select{|customer| customer.first_name == string}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end
end