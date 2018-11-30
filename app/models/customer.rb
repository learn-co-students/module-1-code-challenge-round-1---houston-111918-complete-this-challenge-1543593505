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

  def full_name(first_name, last_name)
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

  # def self.add_review
  #   Review.new #full_name?? self??
  # end

end
