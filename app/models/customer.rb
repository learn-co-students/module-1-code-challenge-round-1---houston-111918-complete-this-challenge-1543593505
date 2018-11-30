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
    reviews.map(&:restaurant).uniq
  end

  def add_review(restaurant, content, rating)
    if rating < 1
      rating = 1
    elsif rating > 5
      rating = 5
    end
    Review.new(self, restaurant, content, rating)
  end

  def self.find_by_name(name)
    split = name.split(" ")
    first = split.first
    last = split.last
    self.all.find{|one| one.first_name == first && one.last_name == last}
  end

  def self.find_all_by_first_name(name)
    self.all.select{|one| one.first_name == name}
  end

  def self.all_names
    self.all.map do |one|
      "#{one.first_name} #{one.last_name}"
    end
  end

  def num_reviews
    reviews.size
  end

end
