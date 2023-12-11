require_relative '../model/Food'
require_relative '../model/RiceCooker'
require_relative 'food_service'

def power(power)
  if power == 'on'
    true
  elsif power == 'off'
    false
  else
    raise ArgumentError, "Invalid power state. Please use 'on' or 'off'."
  end
end

def initialize_cooker(capacity)
  raise 'Error: Invalid capacity. Capacity must be a positive number.' if capacity < 0

  cooker = RiceCooker.new
  cooker.capacity = capacity
  cooker
end

def cook(cooker)
  if cooker.power == false
    puts 'Error: Rice cooker is not turned on. Please turn it on before cooking.'
    return
  end

  unless cooker.food.empty?
    puts 'Error: Rice cooker is empty! Please add food before starting cooking.'
    return
  end

  half_duration = cooker.cooking_duration / 2

  puts '[                      ]'

  cooker.cooking_duration.times do
    puts "[#{'*' * half_duration}]"
    sleep 1
  end

  puts "[**********************]\nCooking finished!"
end

def add_food(food, cooker)
  cooker.add_food(food)
end
