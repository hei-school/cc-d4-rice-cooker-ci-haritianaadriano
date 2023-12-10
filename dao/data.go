package dao

import (
	"fmt"
	"time"
)

func initiateRiceCooker() *RiceCooker {
	riceCooker := &RiceCooker{}
	return riceCooker
}

func initiateFood() *Food {
	food := &Food{}
	return food
}

func powerOn(rc *RiceCooker) {
	rc.power = true
}

func (rc *RiceCooker) cook(food *Food, cookingTime time.Duration) {
	if !rc.power {
		fmt.Println("Error: Rice cooker is not powered on.")
		return
	}

	if rc.isOpen {
		fmt.Println("Error: Rice cooker is open. Close the cooker before cooking.")
		return
	}

	if food == nil {
		fmt.Println("Error: No food provided.")
		return
	}

	rc.food = food
	rc.cookingTime = cookingTime

	fmt.Println("Cooking started:")
	for i := 0; i < int(cookingTime.Seconds()); i++ {
		fmt.Print(".")
		time.Sleep(time.Second)
	}

	fmt.Println("\nCooking completed! Enjoy your", rc.food.food)
}
