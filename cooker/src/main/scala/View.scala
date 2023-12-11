class View {
  def printHome(): Unit = {
    println("=================================Rice-cooker.ko================================")
    println("\n1. insert food")
    println("\n2. set cover (open/close")
    println("\n3. set cooking time")
    println("\n4. check cooker's food")
    println("\n5. cook")
    println("\n6. power (on/off)")
    println("\n7. exit")
    println("================================================================================")
  }
  
  def printCreateFood(): Unit = {
    println("* * * * * * * * * * * * * * * * Create-food * * * * * * * * * * * * * * * * * * *")
  }
}
