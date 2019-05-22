require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

###### Cults ######
cat_cult = Cult.new("Cat Cult", "New York", 1996, "People are temporary. Cats are forever")
dog_cult = Cult.new("Dog Cult", "New York", 1996, "All hail the supreme puppers!")
aliens = Cult.new("Alien Cult", "California", 1960, "They exist.")

###### Followers ######
daniela = Follower.new("Daniela", 23, "i love cats")
tiffany = Follower.new("Tiffany", 15, "idk")
michael = Follower.new("Michael", 20, "dslkfj")
maria = Follower.new("Maria", 50, "?que?")
daniel = Follower.new("Daniel", 55, "the hungry rabbit jumps")

###### BloodOath ######
daniela_cat = BloodOath.new(cat_cult, daniela, "1996 08 20" )
tiffany_cat = BloodOath.new(cat_cult, tiffany, "2004 10 11")
maria_cat = BloodOath.new(cat_cult, maria, "1968 12 12")
michael_alien = BloodOath.new(aliens, michael, "1999 03 17")
maria_alien = BloodOath.new(aliens, maria, "1999 04 01")
daniel_dog = BloodOath.new(dog_cult, daniel, "1963 10 23")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
