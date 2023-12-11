class RiceCooker {
  private var cookingTime: Int = 0
  private var food: List[Food] = List()
  private var capacity: Int = 0
  private var isOpen: Boolean = false
  private var power: Boolean = false

  def getPower(): Boolean = power

  def setPower(power: String): Unit = {
    if (power.equalsIgnoreCase("on")) {
      this.power = true
    } else if (power.equalsIgnoreCase("off")) {
      this.power = false
    } else {
      throw new IllegalArgumentException("Invalid power state. Please use 'on' or 'off'.")
    }
  }

  def getIsOpen(): Boolean = isOpen
  def setIsOpen(open: Boolean): Unit = {
    this.isOpen = open
  }

  def getCookingTime(): Int = cookingTime
  def setCookingTime(time: Int): Unit = {
    this.cookingTime = time
  }

  def getFood(): List[Food] = food
  def addFood(food: Food): List[Food] = {
    this.food :+ food
  }

  def getCapacity(): Int = capacity
  def setCapacity(capacity: Int): Unit = {
    this.capacity = capacity
  }
}
