class Review

    attr_accessor :customer, :restaurant, :rating

    @@all = []

    def initialize(customer, restaurant, contant, rating)
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        @contant = content
        @@all << self
    end

    def self.all
        @@all
    end


  
end

