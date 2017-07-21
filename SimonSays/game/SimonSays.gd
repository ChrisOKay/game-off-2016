extends Node2D

# class member variables go here, for example:
# var a = 2
var sequence = ["1", "3", "2", "4", "2"]
var drum_colors = [Color(1,0,0), Color(0,1,0), Color(0,0,1), Color(1,0,1)]
var current_level = 1
var current_beat = 0

signal switch_mode # "listen" for player input or "playback" (w/o player input)

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	for i in range(1,4):
		get_node(str("Drum",i,"/Particles2D")).set_color(drum_colors[i])
		get_node(str("Drum",i)).connect("drum_hit", self, "_on_drum_hit", [str(i)])
		connect("switch_mode", get_node(str("Drum",i)), "_on_switch_mode")
	start_next_level()

func start_next_level():
	current_level += 1
	if (current_level > sequence.size()):
		print ("game is won")
	play_sequence (current_level)
	current_beat = 0
	start_listening()

func play_sequence(up_to_beat):
	emit_signal ("switch_mode", ["playback"])
	for i in range(0, min(up_to_beat, sequence.size())):
		get_node(str("Drum", sequence[i])).hitDrum()
		get_node("Timer").start()
		yield(get_node("Timer"), "timeout")

func start_listening ():
	emit_signal ("switch_mode", ["listen"])

func _on_drum_hit (which):
	if (which == sequence[current_beat]):
		current_beat += 1
	else:
		print ("Game is lost.")

	if (current_beat >= current_level):
		current_level +=1
		start_next_level()