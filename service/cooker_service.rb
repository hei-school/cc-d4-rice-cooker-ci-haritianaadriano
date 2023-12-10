require_relative "../model/Food.rb"
require_relative "../model/RiceCooker.rb"
require_relative "food_service.rb"

def initialize_cooker(capacity)
    if capacity <= 0
      raise "Error: Invalid capacity. Capacity must be a positive number."
    end
  
    cooker = RiceCooker.new(
      power: nil,
      is_open: false,
      capacity: capacity,
      food: [],
      cooking_time: 0
    )
    return cooker
end

def cook(cooker)
    if cooker.food.empty ?
      puts "Error: Rice cooker is empty! Please add food before starting cooking."
      return
    end

    puts "[                      ]"
  
    cooker.cooking_duration.times do
      puts "[#{'*' * cooking_time / 2}]"
      sleep 1
    end

    puts "[**********************]"
    puts "Cooking finished!"
end

def add_food(food, cooker)
    cooker.add_food(food)
end    
