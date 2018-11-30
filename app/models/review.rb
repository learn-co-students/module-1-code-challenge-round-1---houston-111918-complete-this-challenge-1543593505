class Review
  attr_reader :customer, :restaurant, :rating, :content
  @@all =[]

  def initialize(customer,restaurant,content,rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def rating=(rating)
    if rating < 1
      @rating = 1
    elsif rating > 5
      @rating = 5
    else
      @rating = rating
    end
  end

    def content=(content)
      content.to_s
    end
end
