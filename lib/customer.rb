class Customer
 
  @@all = [] 
  def initialize(name, age)
    @name = name 
    @age = age 
    @@all = all 
  end 
  
  def self.all 
    @@all 
  end 
end