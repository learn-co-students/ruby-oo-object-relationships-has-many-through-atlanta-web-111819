class Waiter
    attr_accessor :name, :year_experience
    @@all = []
    def initialize(name, year_experience)
        @year_experience = year_experience
        @name = name
        @@all << self 
    end

    def new_meal(customer, total, tip = 0)
        Meal.new(self,customer,total,tip)
    end

    def meals 
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
        good_tipper = meals.max{|meal1, meal2| meal1.tip <=> meal2.tip }
        good_tipper.customer
    end



    def self.all 
        @@all
    end
end