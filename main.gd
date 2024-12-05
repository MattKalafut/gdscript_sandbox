extends Node

var health = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Hello, world" # $Label gets the scene node called "Label" to modify it with code.
	$Label.modulate = Color.GREEN
	
	health = 40 # Assign to value
	health = 20 + 30 # Assign to calculation
	health += 20 # Adds 20 to current health. -=, *= and /= do the same for their operations
	print(health)
	
func _input(event):
	if event.is_action_pressed("my_action"): # my_action is bound to spacebar in Project Settings > Input Map
		$Label.modulate = Color.RED
		
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN
