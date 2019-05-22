require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bird_c = Cult.new("Bird", "NY", 1993, "Freedom", 18)
snake_c = Cult.new("Snake", "NY", 1993, "Snaky Snaky", 21)
gun_c = Cult.new("Gun", "NY", 1993, "Don't shot ppl!", 30)
dog_c = Cult.new("Dog", "DC", 1909, "Loyal", 15)
cat_c = Cult.new("Cat", "LongIsland", 1890, "Cute", 15)

tom_f = Follower.new("Tom", 20, "Nope")
tim_f = Follower.new("Tim", 40, "Not Today")
ben_f = Follower.new("Ben", 18, "Where to?")
ken_f = Follower.new("Ken", 50, "Here goes")
lin_f = Follower.new("Lin", 29, "Sleepy")


bloodoath_1 = BloodOath.new(tom_f, bird_c, "2010-04-29")
bloodoath_2 = bird_c.recruit_follower(tim_f, "2012-03-20")
bloodoath_3 = dog_c.recruit_follower(tom_f, "2012-09-20")
bloodoath_4 = ben_f.join_cult(snake_c, "2013-09-20")
bloodoath_5 = ben_f.join_cult(cat_c, "2013-09-20")
bloodoath_6 = BloodOath.new(ben_f, bird_c, "2013-09-20")
bloodoath_7 = BloodOath.new(tim_f, dog_c, "2010-04-28")
bloodoath_8 = BloodOath.new(tom_f, cat_c, "2010-04-29")
bloodoath_9 = BloodOath.new(tom_f, snake_c, "2010-04-10")



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
