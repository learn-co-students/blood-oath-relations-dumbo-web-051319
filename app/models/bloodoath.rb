class BloodOath
attr_reader :date, :cult, :follower
@@all = []

def initialize (follower, cult, date)
  @follower = follower
  @cult = cult
  @date = date
  @@all << self
end

def self.all
  @@all
end

end
