extends Node2D

# class member variables go here, for example:
# var a = 2
var mode = "playback" # listen or playback

signal drum_hit

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	pass

		
func hitDrum():
	get_node("Particles2D").set_emitting(true)
	get_node("Timer").start()
	emit_signal("drum_hit")
	yield(get_node("Timer"), "timeout")
	get_node("Particles2D").set_emitting(false)

func _on_switch_mode(m):
	mode = m
