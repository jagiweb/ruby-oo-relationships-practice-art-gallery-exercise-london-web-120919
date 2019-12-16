class Painting
  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(artist, gallery, title, price)
    @title = title
    @artist = artist
    @gallery = gallery
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    painting_price = Painting.all.map{ |painting| painting.price}
    painting_price.sum
  end

end
