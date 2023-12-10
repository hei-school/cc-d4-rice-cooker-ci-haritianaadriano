require_relative "service/cooker_service.rb"
require_relative "service/food_service.rb"
require_relative "view/view.rb"

def app()
    loop do
        home()
        cooker = initialize_cooker(0)
        puts("cooker capacity: #{cooker.capacity}")
        puts("cooker power: #{cooker.power}")
        puts("cooker open: #{cooker.is_open}")
        choice = gets.chomp.to_i
        
        case choice
        when 1
            enter_cooker_capacity()
            capacity = gets.chomp.to_i
            cooker = initialize_cooker(capacity)
        when 2
            set_cooker_cover()
            cover_choice = gets.chomp.to_i
            
            case cover_choice
            when 1 
                cooker.open_cooker()
            when 2
                cooker.close_cooker() 
        when 3
            food = create_food()           
            add_food(food, cooker)
        when 4
            puts("\n enter cooking time: ")
            time = gets.champ.to_i
            cooker.set_cooking_duration(time)    
        when 5
            cook(cooker) 
        when 6
            puts "Thank you for using the Rice Cooker Console!"
        break
        else
            puts "Invalid choice. Please try again."
        end
    end           
end    