
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	
func _fixed_process(delta):
	var mypos = get_pos()
	if Input.is_key_pressed(KEY_LEFT):
		mypos.x -= 350 * delta
		get_node("AnimatedSprite").set_flip_h(true)
	if Input.is_key_pressed(KEY_RIGHT):
		mypos.x += 350 * delta
		get_node("AnimatedSprite").set_flip_h(false)
	if Input.is_key_pressed(KEY_UP):
		mypos.y -= 350 * delta
		set_z(mypos.y)
	if Input.is_key_pressed(KEY_DOWN):
		mypos.y += 350 * delta
		set_z(mypos.y)
	move_to(mypos)
