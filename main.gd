extends Node

var health = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Health: %s" % str(health)  # $Label gets the scene node called "Label" to modify it with code.
	$Label.modulate = Color.GREEN	
	print(health)
	
func _input(event):
	if event.is_action_pressed("my_action"): # my_action is bound to spacebar in Project Settings > Input Map
		if health > 0:
			health -= 10
			$Label.text = "Health: %s" % str(health) # String interpolation with GDScript https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_format_string.html
			$Label.modulate = Color.RED
			print(health)
		
	if event.is_action_released("my_action"):
		if health > 0:
			$Label.modulate = Color.GREEN
		else:
			$Label.modulate = Color.RED
			$Label.text = "YOU DIED"
