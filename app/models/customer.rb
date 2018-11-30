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
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def restaurants
    reviews.map do |review|
      review.restaurant 
    end
  end


  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    count = 0 
    Review.all.each do |review|
      if review.customer == self 
        count += 1 
      end
    end
    count
  end

  
  def self.find_by_name(string)
    Customer.all.find do |customer|
      customer.full_name == string
    end
  end

  def self.find_all_by_first_name(string)
    Customer.all.select do |customer|
      customer.first_name == string 
    end
  end


  def self.all_names
    Customer.all.map do |customer|
      customer.first_name
    end
  end


  












end 
