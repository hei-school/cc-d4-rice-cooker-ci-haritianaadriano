require_relative "../model/Food.rb"

def home()
    puts ("==================================Rice-cooker.ko================================")
    puts("\n 1. initialize cooker")
    puts("\n 2. cooker cover")
    puts("\n 3. add food")
    puts("\n 4. set cooking time")
    puts("\n 5. cook")
    puts("\n 6. power: on / off")
    puts("\n 7. exit")
    puts ("================================================================================")
end    

def enter_cooker_capacity()
    puts("Enter cooker capacity: ")
    capacity = gets.chomp.to_i
    return capacity
  end

def set_cooker_cover()
    puts("\n 1. open cover")
    puts("\n 2. close cover")
end    

def create_food()
    puts("\n enter food name: ")
    food_name = gets.chomp.strip
    puts("\n enter food weight: ")
    food_weight = gets.chomp.to_i 
    is_food = true
    return Food.new(food_name, is_food, food_weight)
end

def power_view()
    puts("enter power(on or off): ")
end    