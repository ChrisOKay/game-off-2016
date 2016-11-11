
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_red_value_changed( value ):
	get_node("red/lbl").set_text("%X" % [value])
	update()
			
func _draw():
	var r = floor(get_node("red").get_value())
	var g = floor(get_node("green").get_value())
	var b = floor(get_node("blue").get_value())
	
	draw_rect(Rect2(Vector2(0,0),Vector2(600,400)),Color(0,0,0))
	
	draw_rect(Rect2(Vector2(0,0),Vector2(600,150)),Color(.6,.6,.6))
	
	
	get_node("Circles").set_rgb(r/255, g/255, b/255)
	get_node("Circles").update()
	
	if "%X" % ((r*65536) + (g*256) + b) == "AFFE12":
		get_node("Solved").set_text("YES!")
	else:
		get_node("Solved").set_text("")
		
			
func _on_green_value_changed( value ):
	get_node("green/lbl").set_text("%X" % [value])
	update()


func _on_blue_value_changed( value ):
	get_node("blue/lbl").set_text("%X" % [value])
	update()


func _on_Button_pressed():
	hide() 
