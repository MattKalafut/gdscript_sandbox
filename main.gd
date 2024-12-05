extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Hello, world"; # $Label gets the scene node called "Label" to modify it with code.
	$Label.modulate = Color.GREEN;
