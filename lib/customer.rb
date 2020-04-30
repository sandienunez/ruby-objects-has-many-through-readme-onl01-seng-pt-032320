require "pry"
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

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end
    def meals #returns an array of only our meals
      #Meals.all returns all the meals ever not just our meals
        Meal.all.select do |meal_obj|
            meal_obj.customer == self  #not the class /selecting whatever current customer
        end 
    end 

    def waiters # asking what the waiter is for each meal and returns it
      # binding.pry
      # we are calling meals method to find out our meals
      #then we go through our meals and ask who the waiter is
        meals.map do |meal_obj|
            meal_obj.waiter 
       end
    end
end