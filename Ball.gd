extends RigidBody2D
# warning-ignore:unused_argument
func _process(delta):
	randomize()
	if Input.is_action_just_pressed("ui_accept"):
		set_linear_velocity(Vector2(rand_range(-600,600),rand_range(-100, 100)))
		State.game_state==State.G.PLAYING
