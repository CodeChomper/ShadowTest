extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var s1 = get_node("shadowSprite")
onready var s2 = get_node("shipSprite")

func _ready():
	set_process(true)
	pass


func _process(delta):
	var turn = Input.is_action_pressed("ui_right")
	if turn:
		s1.rotate(0.9 * delta)
		s2.rotate(0.9 * delta)