require "pry"
class BloodOath
  attr_reader :follower, :cult, :initiation_date
  @@all = []
  def initialize(follower, cult, initiation_date)
    @follower = follower
    @cult = cult
    @initiation_date = initiation_date
    @@all << self
  end
  def self.all
    @@all
  end
  def self.first_oath
    all.sort_by {|bloodoath| bloodoath.initiation_date}[0].follower
  end
end
