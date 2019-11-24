class Meal
    #joining table for waiter and meals

    #needs to now everything about the meals 
    #including the customer,waiter, tip, cost, etc
    attr_accessor :waiter, :customer, :total, :tip
    @@all = []

    # how does this joiner table have access to the 
    # customer and waiter??? IDEKKKKK

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end