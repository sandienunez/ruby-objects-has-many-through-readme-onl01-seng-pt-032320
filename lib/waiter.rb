class Waiter
    attr_accessor :name, :yrs_experience
    @@all = []
    def initialize(name, yrs_experience)
        @name = name 
        @yrs_experience = yrs_experience
        @@all << self 
    end 
    def self.all 
        @@all 
    end
    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals #returns an array of only our meals
        #Meals.all returns all the meals ever not just our meals
          Meal.all.select do |meal_obj|
              meal_obj.waiter == self  #not the class /selecting whatever current customer
          end 
      end 
      def best_tipper #return the customer who tips the best
        best_tipped_meal = meals.max do |meal_a, meal_b|
          meal_a.tip <=> meal_b.tip
        end
        #sets variable best tipped meal to the object with the highest tip
        #returns that object
      
        best_tipped_meal.customer
        #returns the object with the best tipped meal's customer
      end
end