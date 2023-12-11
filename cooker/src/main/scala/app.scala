import scala.io.StdIn.readInt
import scala.io.StdIn.readLine

class app {
  def app(): Unit = {
    val view = new View()
    val riceCooker = new RiceCooker()
    val service = new Service()
    var running = true

    while(running) {
      view.printHome()
      val choice = readInt()
      println(s"* * * power: ${riceCooker.getPower()}")
      println(s"* * * capacity: ${riceCooker.getCapacity()}")
      println(s"* * * foods: ${riceCooker.getFood()}")
      println(s"* * * is open: ${riceCooker.getIsOpen()}")
      println(s"* * * cooking time: ${riceCooker.getCookingTime()}")

      choice match
        case 4 => riceCooker.getFood()
        case 1 => {
          view.printCreateFood()
          println("insert cooker capacity: ")
          val cookerCapacity = readInt()
          riceCooker.setCapacity(cookerCapacity)
          println("insert food name: ")
          var newFood: Food = new Food()
          val foodName = readLine()
          newFood.setName(foodName)
          println("insert food weight: ")
          val foodWeight = readInt()
          newFood.setWeight(foodWeight)
          riceCooker.addFood(newFood)
        }
        case 2 => {
          println("\n 1.open 2.close")
          val openChoice = readInt()
          openChoice match
            case 1 => riceCooker.setIsOpen(true)
            case 2 => riceCooker.setIsOpen(false)
        }
        case 3 => {
          println("enter cooking time: ")
          val time = readInt()
          riceCooker.setCookingTime(time)
        }
        case 4 => riceCooker.getFood()
        case 5 => service.cook(riceCooker)
        case 6 => {
          println("\n 1.on 2.off")
          val powerChoice = readInt()
          powerChoice match
            case 1 => riceCooker.setPower("on")
            case 2 => riceCooker.setPower("off")
        }
        case 7 => running = false
    }
  }
}
