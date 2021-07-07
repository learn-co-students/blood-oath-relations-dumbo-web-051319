require 'pry'
require 'date'
class Cult
  attr_reader :name, :location, :year, :slogan
  @@all = []

  def initialize(name, location, year, slogan)
    @name = name
    @location = location
    @year = year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    # binding.pry
    new_follower= BloodOath.new(follower,self, Date.today.strftime('%Y-%m-%d'))
    # to join the cult u have to do a blood oath
    #   we make the follower do a blood oath

  end

  def cult_population
    population= 0
    BloodOath.all.each do |oath|
      if self == oath.cult
        population +=1
      end
    end
    return population
  end

  def self.find_by_name(name)
    cult_arr = []
    self.all.each do |cult|
      # binding.pry
      if cult.name == name
        cult_arr << cult
      end
    end
    return "No cult found" if cult_arr.length < 1
    cult_arr
  end

  def self.find_by_location(location)
    cult_arr = []
    self.all.each do |cult|
      if cult.location == location
        cult_arr << cult.name
      end
    end
    return "No cult found " if cult_arr.length < 1
    cult_arr
  end

  def self.find_by_founding_year (year)
    cult_arr = []
    self.all.each do |cult|
      if cult.year == year
        cult_arr << cult.name
      end
    end
    return "No cult found " if cult_arr.length < 1
    cult_arr

  end





end
