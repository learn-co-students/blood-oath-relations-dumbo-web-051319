class BloodOath
  attr_reader :cult_name, :follower, :initiation_date
  @@all = []

  def initialize(cult_name, follower, initiation_date = Time.now)
    @cult_name = cult_name
    @follower = follower
    @initiation_date = initiation_date
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    self.all[0].follower
  end

end
