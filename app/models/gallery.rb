class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end
  
  def artist_names
    paintings.map{|paint| paint.artist}
  end

  def most_expensive_painting
    paintings.max_by{|paint| paint.price}
  end

end
