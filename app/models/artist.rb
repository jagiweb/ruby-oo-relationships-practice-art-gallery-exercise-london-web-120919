class Artist

  attr_reader :name, :years_experience
  # , :paintings, :galleries

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paint| paint.artist == self}
  end

  def galleries
    paintings.map {|paint| paint.gallery}
  end

  def self.total_experience
    artists_xp = Artist.all.map{|artist| artist.years_experience}
    artists_xp.sum
  end

  def self.most_prolific
    Artist.all.max_by{|a| a.years_experience / a.paintings.count}
  end

  def create_painting(gallery, title, price)
    Artist.new(self, gallery, title, price)
  end

end
