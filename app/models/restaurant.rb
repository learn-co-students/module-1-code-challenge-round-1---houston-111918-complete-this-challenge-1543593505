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
    Restaurant.all.find do |restaurant| 
      restaurant.name == name 
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end 

  #def total_reviews
    #count = 0
    #reviews.each do |review|
      #if review.customer == self 
        #count += 1
      #end
   # end
    #count
  #end

#end
