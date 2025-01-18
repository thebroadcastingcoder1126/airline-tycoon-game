extends Control

func _ready():
	# Instead of connect("pressed", self, "_on_start_button_pressed")
	# Use the new property-based approach in Godot 4:
	$StartButton.pressed.connect(_on_start_button_pressed)

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
