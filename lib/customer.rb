class Customer
 attr_accessor :name, :age
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