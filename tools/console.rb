require_relative '../config/environment.rb'

# artist

a1  = Artist.new("Leo", 10)
a2  = Artist.new("Javier", 5)
a3  = Artist.new("Luisa", 10)
a4  = Artist.new("Karmel", 5)

# gallery

g1  = Gallery.new("Art Gallery", "London")
g2  = Gallery.new("Art Gallery", "London")
g3  = Gallery.new("Paris Gallery", "France")
g4  = Gallery.new("Paris Gallery", "France")

# paintings

p1  = Painting.new(a1 , g1 , "Lola", 500)
p2  = Painting.new(a2 , g2 , "Jaja", 2000)
p3  = Painting.new(a3 , g3 , "Uy", 500)
p4  = Painting.new(a4 , g4 , "HHH", 5000)
p5 = Painting.new(a1 , g4 ,"dddH", 2000)
p6 = Painting.new(a1 , g3 , "HooH", 1000)



binding.pry

puts "Bob Ross rules."
