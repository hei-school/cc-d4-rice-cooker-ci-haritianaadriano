class Food {
  private var name: String = ""
  private var weight: Int = 0

  def getName: String = name
  def setName(name: String): Unit = {
    this.name = name
  }

  def getWeight: Int = weight
  def setWeight(weight: Int): Unit = {
    this.weight = weight
  }
}
