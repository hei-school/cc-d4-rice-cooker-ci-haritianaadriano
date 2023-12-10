def home()
    puts ("==================================Rice-cooker.ko================================")
    puts("\n 1. initialize cooker")
    puts("\n 2. cooker cover")
    puts("\n 3. add food")
    puts("\n 4. set cooking time")
    puts("\n 5. cook")
    puts("\n 6. exit")
end    

def enter_cooker_capacity()
    puts("enter cooker capacity: ")
end 

def set_cooker_cover()
    puts("\n 1. open cover")
    puts("\n 2. close cover")
end    

def create_food(food)
    puts("\n enter food name: ")
    food_name = gets.champ
    puts("\n enter food weight: ")
    food_weight = gets.champ 
    food.name = food_name
    food.weight = food_weight
    return food
end