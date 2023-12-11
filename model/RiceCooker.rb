class RiceCooker
  attr_accessor :power, :is_open, :capacity, :food, :cooking_duration

  def initialize(power = false, is_open = true, capacity = 0, food = [], cooking_duration = 0)
    @power = power
    @is_open = is_open
    @capacity = capacity
    @food = food
    @cooking_duration = cooking_duration
  end

  def add_food(food)
    raise 'Error: rice cooker is full' if food.weight > @capacity


    @food << food
    @capacity -= food.weight
  end

  def open_cooker
    @is_open = true
  end

  def close_cooker
    @is_open = false
  end

  def set_cooking_duration(duration)
    @cooking_duration = duration
  end
end
