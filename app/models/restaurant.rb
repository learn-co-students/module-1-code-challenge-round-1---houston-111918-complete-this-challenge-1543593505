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
  
  def self.find_by_name(name)
    # binding.pry
    Restaurant.all.find{|x| x.name if x.name == name}
  end
  
  def customers
    binding.pry
    # Review.all.select {|x| x.restaurant == self}.map{|y| y.review_content}
    Review.all.select {|x| x.restaurant == self}.map(&:customer)
  end
  
  def reviews
    # binding.pry
    Review.all.select {|x| x.restaurant == self}.map{|y| y.review_content}
  end

end
