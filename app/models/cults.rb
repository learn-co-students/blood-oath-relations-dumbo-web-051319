class Cult
  attr_reader :name, :location, :founded, :slogan
  @@all = []

  def initialize(name, location, founded, slogan)
    @name = name
    @location = location
    @founded = founded
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end


  def followers
    BloodOath.all.select {|oath| oath.cult_name == self}
  end

  def cult_population
    # select all of the followers that are apart of this cult
    # take that array and count the elements
    self.followers.count
  end

  def self.find_by_name(string)
    #select the instance that matches the cult/string within the cults
    self.all.select {|cult| cult.name == string}
  end

  def self.find_by_founding_year(year)
    #iterate through all the cults and select the one that matches that year
    self.all.select {|cult| cult.founded == year}
  end

  def average_age
    people = self.followers
    person = people.map {|person| person.follower.age}
    total = person.inject {|sum, x| sum + x}
    average = total / person.size
    average.to_f
  end

  def my_followers_mottos
    people = self.followers
    mottos = people.map {|person| person.follower.life_motto}
    mottos
  end

  def self.most_common_location
    new_hash = Hash.new(0)
    BloodOath.all.each do |x|
      new_hash[x.cult_name] += 1
      end
      new_hash.max_by {|k,v| v}[0]
    end

  end
