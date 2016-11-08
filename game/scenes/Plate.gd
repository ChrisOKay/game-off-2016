
extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

func _init():
	connect ("body_enter", self, "switchOnOff")
	
func switchOnOff (body):
	var newState = (get_node("Sprite").get_frame() + 1) % 2
	get_node("Sprite").set_frame(newState)
	