package main

import (
	"cc-d2-my-rice-cooker-haritianaadriano/dao"
	"cc-d2-my-rice-cooker-haritianaadriano/view"
	"fmt"
	"time"
)

func main() {
	// Initialize rice cooker and food
	riceCooker := dao.InitiateRiceCooker()
	food := dao.InitiateFood()

	// Display home view
	view.HomeView()

	// Read user input
	var choice int
	fmt.Print("Enter your choice: ")
	_, err := fmt.Scanln(&choice)
	if err != nil {
		fmt.Println("Error:", err)
		return
	}

	// Perform action based on user choice
	switch choice {
	case 1:
		// Create a food
		fmt.Print("Enter food name: ")
		_, err := fmt.Scanln(&food.food)
		if err != nil {
			fmt.Println("Error:", err)
			return
		}
		food.isFood = true
		fmt.Println("Food created:", food.food)
	case 2:
		// Iniate rice cooker
		dao.PowerOn(riceCooker)
		fmt.Println("Rice cooker initiated.")
	case 3:
		// Cook
		fmt.Print("Enter cooking time (in seconds): ")
		var cookingTime int
		_, err := fmt.Scanln(&cookingTime)
		if err != nil {
			fmt.Println("Error:", err)
			return
		}
		duration := time.Duration(cookingTime) * time.Second
		riceCooker.Cook(food, duration)
	default:
		fmt.Println("Invalid choice.")
	}
}
