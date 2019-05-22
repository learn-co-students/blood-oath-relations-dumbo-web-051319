require "pry"
class Cult
  attr_reader :name, :location, :founding_year, :slogan, :minimum_age
  @@all = []
  def initialize(name, location, founding_year, slogan, minimum_age)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @minimum_age = minimum_age
    @@all << self
  end
  def self.all
    @@all
  end
  def follower_list
    BloodOath.all.select{|bloodoath| bloodoath.cult == self}.map {|bloodoath| bloodoath.follower}
  end
  def recruit_follower (follower, date)
    if follower.age < minimum_age
      return "Woops wrong person, we think you are too young to join #{name} cult"
    else
      BloodOath.new(follower, self, date)
      return "#{follower.name}, Wellcome to #{name} cult"
    end
  end
  def cult_population
    follower_list.count
  end
  def average_age
    (follower_list.map{|follower| follower.age}.sum.to_f/follower_list.length).round(2)
  end
  def my_followers_mottos
    follower_list.each{|follower| puts follower.life_motto}
  end
  def self.find_by_name (name)
    all.find{|cult| cult.name == name}
  end
  def self.find_by_location (location)
    all.select{|cult| cult.location == location}
  end
  def self.find_by_founding_year (founding_year)
    all.select{|cult| cult.founding_year == founding_year}
  end
  def self.least_popular
    hash_temp = {}
    all.each{|cult| hash_temp[cult] = cult.cult_population}
    hash_temp.sort_by{|cult, population| population}[0][0]
  end
  def self.most_common_location
    hash_temp = {}
    all.each{|cult| hash_temp[cult.location] = 0}
    hash_temp.each do |location, counter|
      all.each do |cult|
        if location == cult.location
          hash_temp[location] += 1
        end
      end
    end
    hash_temp.sort_by{|location, counter| counter}[-1][0]
  end
end
