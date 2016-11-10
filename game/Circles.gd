
extends Node2D

# member variables here, example:
var r
var g
var b

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func set_rgb(nr, ng, nb):
	r = nr
	g = ng
	b = nb

func _draw():
	set_blend_mode(BLEND_MODE_ADD)
	draw_circle( \
		Vector2(220,250),80, Color( r, 0, 0))
	draw_circle( \
		Vector2(220,300),80, Color( 0, g, 0))
	draw_circle( \
		Vector2(280,250),80, Color( 0, 0, b))
