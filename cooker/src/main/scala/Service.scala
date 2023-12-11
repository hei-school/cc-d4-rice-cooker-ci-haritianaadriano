class Service {
  def cook(cooker: RiceCooker): Unit = {
    try {
      if (!cooker.getIsOpen()) {
        throw new IllegalStateException("Rice cooker lid is open. Please close it before cooking.")
      }

      if (cooker.getFood().isEmpty) {
        throw new IllegalArgumentException("Rice cooker is empty. Please add food before cooking.")
      }

      println("[  Cooking started...  ]")

      for (_ <- 1 to cooker.getCookingTime()) {
        Thread.sleep(1000)
        print(Console.RED + "." + Console.RESET)
      }

      println("\n[  Cooking finished!  ]")
    } catch {
      case e: IllegalStateException => println(e.getMessage)
      case e: IllegalArgumentException => println(e.getMessage)
    }
  }

}
