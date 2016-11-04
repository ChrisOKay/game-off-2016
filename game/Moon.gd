
extends ParallaxLayer

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)

func _fixed_process(delta):
	var mypos = get_pos()
	mypos.x -= 20 * delta
	if mypos.x < -1267: mypos.x = 0
	set_pos(mypos)

