package dao

import "time"

type Food struct {
	food string
	isFood bool
}

type RiceCooker struct {
	power bool
	isOpen bool
	food *Food
	cookingTime time.Duration
}