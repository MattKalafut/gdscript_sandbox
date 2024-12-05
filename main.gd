extends Node

var health = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Health: %s. You are healthy" % str(health)  # $Label gets the scene node called "Label" to modify it with code.
	$Label.modulate = Color.GREEN	
	print(health)
	
func _input(event):
	if event.is_action_pressed("my_action"): # my_action is bound to spacebar in Project Settings > Input Map
		health -= 10
		$Label.modulate = Color.RED
		print(health)
		
		if health <= 0:
			health = 0
			$Label.text = "You died!"
			print("You died!")
		elif health <= 50:
			$Label.text = "Health: %s. You are injured" % str(health)
			print("You are injured")
		else:
			$Label.text = "Health: %s. You are healthy" % str(health)
			print("You are healthy")
		
		
	if event.is_action_released("my_action"):
		if health > 50:
			$Label.modulate = Color.GREEN
		elif health <= 50 and health > 0: # In GDScript, we use and/or instead of &&/||
			$Label.modulate = Color.YELLOW
		else:
			$Label.modulate = Color.RED
		
