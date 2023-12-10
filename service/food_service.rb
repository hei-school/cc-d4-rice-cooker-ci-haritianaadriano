require_relative "../model/Food.rb"

def initialize_food(name, weight)
    food = Food.new(name, true, weight)
    return food
end    