class Review

    attr_reader :customer, :restaurant
    attr_accessor :rating, :content

    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating 
        @content = content
        @@all << self
    end

    def self.all 
        @@all
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

  
  
end

