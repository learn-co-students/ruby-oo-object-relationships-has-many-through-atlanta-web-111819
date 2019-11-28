require 'pry'

class Customer
    
    attr_reader :name, :age
    @@all = []

    def initialize(name, age)
      @age = age
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.customer == self
        end
    end

    def waiters
      meals = Meal.all.select do |meal|
        meal.customer == self
      end
      meals.map do |meal|
        meal.waiter
      end
    end
end