extends Node
enum G {INITIAL,PLAYING,PAUSE,GOAL,WIN}
var game_state = G.INITIAL
var score1 = 0
var score2 = 0
func _ready():
	var score1= 0
	var score2= 0
func _process(delta):
	if game_state == G.WIN:
		score1 = 0
		score2 = 0
