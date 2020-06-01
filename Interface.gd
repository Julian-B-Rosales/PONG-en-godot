extends CanvasLayer
var t
func _ready():
	$WinP1.hide()
	$WinP2.hide()
	t= get_node("Timer")
func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		$Label.hide()
		$Controles1.hide()
		$Controles2.hide()
		$Hint.hide()
		get_tree().paused = false
		State.game_state == State.G.PLAYING

func _on_goalP1_body_entered(body):
	State.score1 += 1
	$Score1.text = str(State.score1)
	$Label.show()
	win()

func _on_goalP2_body_entered(body):
	State.score2 += 1
	$Score2.text = str(State.score2)
	$Label.show()
	win()
func win():
	if State.score1 == 10:
		$WinP1.show()
		t.set_wait_time(3)
		t.start()
		yield(t,"timeout")
		State.game_state==State.G.WIN
		get_tree().reload_current_scene()
	elif State.score2 == 10:
		$WinP2.show()
		t.set_wait_time(3)
		t.start()
		yield(t,"timeout")
		State.game_state==State.G.WIN
		get_tree().reload_current_scene()
