require_relative "service/cooker_service.rb"
require_relative "service/food_service.rb"
require_relative "view/view.rb"

def app()
    
  cooker = RiceCooker.new()
  
loop do
  home()
  
  puts("cooker capacity: #{cooker.capacity}")
  puts("cooker power: #{cooker.power}")
  puts("cooker open: #{cooker.is_open}")
  puts("cooking time: #{cooker.cooking_duration}")
  puts("\n enter your choice: ")
  choice = gets.chomp.to_i
  
  case choice
  when 1
    capacity = enter_cooker_capacity()
    
    cooker.capacity = capacity
    print "\e[2J\e[0;0H"
  when 2
    set_cooker_cover()
    cover_choice = gets.chomp.to_i
    
    print "\e[2J\e[0;0H"
    case cover_choice
    when 1
      cooker.open_cooker()
      
    print "\e[2J\e[0;0H"
    when 2
      cooker.close_cooker()
      
    print "\e[2J\e[0;0H"
    end
  when 3
    food = create_food()
    add_food(food, cooker)
    
    print "\e[2J\e[0;0H"
  when 4
    puts("\n enter cooking time: ")
    time = gets.chomp.to_i
    cooker.set_cooking_duration(time)
    
    print "\e[2J\e[0;0H"
  when 5
    cook(cooker)
    print "\e[2J\e[0;0H"
  when 6
    power_view()
    power_input = gets.chomp.strip
    cooker.power = power(power_input)  

    print "\e[2J\e[0;0H"
  when 7
    puts "Thank you for using the Rice Cooker Console!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
end
