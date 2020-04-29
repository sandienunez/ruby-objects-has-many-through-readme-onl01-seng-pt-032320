class Customer
 attr_accessor :name, :age
  @@all = [] 
  def initialize(name, age)
    @name = name 
    @age = age
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip) #initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end 
end