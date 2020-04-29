class Waiter
  attr_accessor :name, :yrs_experience 
  @@all = Array.new
  def initialize(name, yrs_experience)
    @name = name 
    @yrs_experience = yrs_experience
    @@all << self 
  end 
end