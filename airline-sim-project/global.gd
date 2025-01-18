extends Node

var day : int = 1
var money : float = 100000
var daily_income : float = 500
var daily_expense : float = 200

func _ready():
	print("Global.gd loaded. Starting day = ", day, " money = ", money)

func advance_day():
	day += 1
	money += (daily_income - daily_expense)
