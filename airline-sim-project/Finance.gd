extends Node

# We'll attach this to a node in the Game scene to handle day progression
var day_length_seconds : float = 3.0  # Time for each day in seconds

func _ready():
	var day_timer = Timer.new()
	day_timer.wait_time = day_length_seconds
	day_timer.one_shot = false
	add_child(day_timer)

	# Godot 4 style: connect the 'timeout' signal via its property
	day_timer.timeout.connect(_on_DayTimer_timeout)

	day_timer.start()


func _on_DayTimer_timeout():
	Global.advance_day()
	update_ui()

func update_ui():
	# Make sure you have "DayLabel" and "MoneyLabel" in the scene
	if has_node("DayLabel"):
		get_node("DayLabel").text = "Day: " + str(Global.day)
	if has_node("MoneyLabel"):
		get_node("MoneyLabel").text = "Money: $" + str(Global.money)
