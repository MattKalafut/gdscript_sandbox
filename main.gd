
extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Hello, world"; # $Label gets the scene node called "Label" to modify it with code.
	$Label.modulate = Color.GREEN;
	
	
func _input(event):
	if event.is_action_pressed("my_action"): # my_action is bound to spacebar in Project Settings > Input Map
		$Label.modulate = Color.RED;
		
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN;
