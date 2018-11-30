class Restaurant
  attr_accessor :name
  attr_reader :content

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map(&:customer).uniq
  end

  def self.find_by_name(name)
    self.all.find{|one| one.name == name}
  end

  def average_star_rating
    sum = reviews.map(&:rating).reduce(:+).to_f
    sum / reviews.map(&:rating).size
  end

  def longest_review
    reviews.group_by(&:content).max{|x,y| x[0].length <=> y[0].length}[0]
  end


end
