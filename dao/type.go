package dao

import "time"

type Food struct {
	foodName string
	isFood bool
}

type RiceCooker struct {
	power bool
	isOpen bool
	food *Food
	cookingTime time.Duration
}

func NewFood(foodName string) *Food {
	return &Food{
		foodName: foodName,
		isFood:   true,
	}
}

func NewRiceCooker() *RiceCooker {
	return &RiceCooker{}
}