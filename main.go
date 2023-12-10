package main

import (
	"cc-d2-my-rice-cooker-haritianaadriano/dao"
	"cc-d2-my-rice-cooker-haritianaadriano/view"
	"fmt"
	"time"
)

func main() {
	for {
		riceCooker := dao.InitiateRiceCooker()
		food := dao.InitiateFood()

		view.HomeView()

		var choice int
		fmt.Print("Enter your choice: ")
		fmt.Scanln(&choice)

		switch choice {
		case 1:
			fmt.Println("Food created:")
		case 2:
			riceCooker.PowerOn()
			fmt.Println("Rice cooker initiated.")
		case 3:
			fmt.Print("Enter cooking time (in seconds): ")
			var cookingTime int
			fmt.Scanln(&cookingTime)
			duration := time.Duration(cookingTime) * time.Second
			riceCooker.Cook(food, duration)
		default:
			fmt.Println("Invalid choice.")
		}

		var continueChoice string
		fmt.Print("Do you want to continue? (yes/no): ")
		fmt.Scanln(&continueChoice)

		if continueChoice != "yes" {
			break
		}
	}
}
