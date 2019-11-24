class Customer
    #has many meals 
    #has many waiters thru said meals

    attr_accessor :name
    @@all = []

    def initialize(name, age)
        @name = name 
        @age = age
        @@all << self 
    end 

    def new_meal(waiter,total, tip=0)
        Meal.new(waiter, self, total, tip)
    end 

    def meals
        Meal.all.select do |meals|
            meals.customer == self
        end
    end 

    def self.all 
        @@all
    end 
  
    def waiters
        #wouldnt this just return an array of "true"'s?
        #why use map over select
        meals.map do |meals|
            meals.waiter
        end 
    end 
end


# def meals
#     Meal.all.select do |meal|
#       meal.customer == self
#     end
#   end
 
#   def waiters
#     meals.map do |meal|
#       meal.waiter
#     end
#   end
 
#   def new_meal(waiter, total, tip=0)
#     Meal.new(waiter, self, total, tip)
#   end