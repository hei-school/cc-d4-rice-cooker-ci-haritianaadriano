require_relative "../model/Food.rb"
require_relative "../model/RiceCooker.rb"
require_relative "food_service.rb"

def power(power)
  if power == "on"
    return true
  elsif power == "off"
    return false
  else
    raise ArgumentError, "Invalid power state. Please use 'on' or 'off'."
  end
end

def initialize_cooker(capacity)
    if capacity < 0
      raise "Error: Invalid capacity. Capacity must be a positive number."
    end
    cooker = RiceCooker.new()
    cooker.capacity = capacity
    return cooker
end

def cook(cooker)
  if cooker.power == false
    puts "Error: Rice cooker is not turned on. Please turn it on before cooking."
    return
  end

  unless cooker.food.empty?
    puts "Error: Rice cooker is empty! Please add food before starting cooking."
    return
  end

  half_duration = cooker.cooking_duration / 2

  puts "[                      ]"

  cooker.cooking_duration.times do
    puts "[#{'*' * half_duration}]"
    sleep 1
  end

  puts "[**********************]\nCooking finished!"
end


def add_food(food, cooker)
    cooker.add_food(food)
end    
