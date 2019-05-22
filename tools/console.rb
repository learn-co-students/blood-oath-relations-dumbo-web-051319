require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("The Cult of Cats", "NY",2019,"Cat is good.")
cult2 = Cult.new("The Cathedral of Heavy Liftants", "VietNam", 2017, "Lift me up")
cult3 = Cult.new("The Cult of Ships","Mewni", 2018,"Starco bes ship")

follower1 = Follower.new("Son",23,"IDC")
follower2 = Follower.new("Tuan",25,"Must Lift")
follower3 = Follower.new("Duong",24,"Food is life")
follower4 = Follower.new("Daniela",22,"Cat is life")

oath1 = BloodOath.new(follower1,cult2,"1911/05/12")
oath2 = BloodOath.new(follower2,cult2,"2000/12/21")
oath3 = BloodOath.new(follower3,cult1,"1994/11/09")
oath4 = BloodOath.new(follower3,cult2,"2008/09/28")
oath5 = BloodOath.new(follower3,cult3,"2008/09/28")
oath6 = BloodOath.new(follower4,cult1,"2008/09/28")








binding.pry

puts 'Mwahahaha!' # just in case pry is buggy and exits
