class Follower

attr_reader :name, :age, :life_motto
@@all = []

  def initialize (name, age, life_motto)
    @name= name
    @age = age
    @life_motto= life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cult
    cult_arr = []
    BloodOath.all.each do |oath|
     if self == oath.follower
       cult_arr << oath.cult
     end
   end
   return cult_arr
  end

  def join_cult(cult)
    # add this follower(self) in to the cult that they give
    # to join a cult, follower take a blood oath, create a blood oath with
    # the follower(self) and cult argument
    new_follower= BloodOath.new(self,cult,Date.today.strftime('%Y-%m-%d'))
  end

  def self.of_a_certain_age(number)
    follower_arr = []
    self.all.each do |follower|
      if follower.age >= number
        follower_arr << follower
      end
    end
    follower_arr
  end


end
