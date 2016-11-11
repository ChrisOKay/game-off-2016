
extends StaticBody2D

var scnColorPuzzle = preload ("res://scenes/Color_Puzzle.tscn")
var ndColorPuzzle

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	ndColorPuzzle = scnColorPuzzle.instance()
	ndColorPuzzle.hide()
	ndColorPuzzle.set_pos(Vector2(200,100))
	get_node("../HUD").add_child(ndColorPuzzle)




func _on_TextureButton_pressed():
	print ("daskdjal")
	ndColorPuzzle.show()
	ndColorPuzzle.set_z(999)