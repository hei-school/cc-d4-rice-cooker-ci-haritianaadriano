require_relative '../model/Food'

def initialize_food(name, weight)
  Food.new(name, true, weight)
end
