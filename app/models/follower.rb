require "pry"
class Follower
  attr_reader :name, :age, :life_motto
  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end
  def self.all
    @@all
  end
  def cults
    BloodOath.all.select{|bloodoath| bloodoath.follower == self}.map {|bloodoath| bloodoath.cult}
  end
  def join_cult(cult, date)
    if age < cult.minimum_age
      return "Sorry, you are too young to join #{cult.name} cult"
    else
      BloodOath.new(self, cult, date)
      return "#{name}, Wellcome to #{cult.name} cult"
    end
  end
  def my_cults_slogans
    cults.each{|clult| puts cult.slogan}
  end
  def fellow_cult_members
    cults.map {|cults| cults.follower_list}.flatten.uniq - [self]
  end
  def self.of_a_certain_age(age)
    all.select{|follower| follower.age > age}
  end
  def self.all_rank
    hash_temp = {}
    all.each{|follower| hash_temp[follower] = follower.cults.count}
    hash_temp.sort_by{|follower, counter| counter}
  end
  def self.most_active
    all_rank[-1][0]
  end
  def self.top_ten
    all_rank.reverse[0..10].map{|follower| follower[0]}
  end
end
