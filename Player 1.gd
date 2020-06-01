extends KinematicBody2D

var velocity = Vector2(0,0) 
var ang
func get_input():
	if Input.is_action_just_pressed("P1_up"):
		velocity.y = -500
	elif Input.is_action_just_pressed("P1_down"):
		velocity.y = 500
	elif Input.is_action_just_released("P1_up"):
		velocity.y = 0
	elif Input.is_action_just_released("P1_down"):
		velocity.y = 0

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	if Input.is_action_just_pressed("P1_attack"):
		ang = rotate(65*delta)
	
