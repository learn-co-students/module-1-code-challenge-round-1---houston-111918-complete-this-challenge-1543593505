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
  
  def self.find_by_name(name)
    # binding.pry
    Customer.all.find{|x| x.full_name if x.full_name == name.downcase}
  end
  
  def self.find_all_by_first_name(name)
    # binding.pry
    name = name
    Customer.all.find_all{|x| x.first_name if x.first_name == name}
  end
  
  def self.all_names
    # binding.pry
    Customer.all.map(&:full_name)
  end
  
  def add_review(restaurant, content, rating)
    # binding.pry
    Review.new(self, restaurant, rating, content)
  end
  
  def num_reviews
    binding.pry
    Review.all.each {|x| x.customer == self}.map{|y| y.review_content}
  end
  
  def restaurants
    # binding.pry
    Review.all.select{|x| x.customer == self}.map{|y| y.restaurant}
  end
  
end
