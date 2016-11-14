
extends HSlider

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	


func _on_Red_Slider_value_changed( value ):
	get_node("../TextureFrame").draw_circle(Vector2(50,50),50, Color(get_value(),0,0))