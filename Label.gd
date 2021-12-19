extends Label

var score = 0




func _on_Timer_timeout():
	score += 1
	text = "Score: %d" % score
	pass # Replace with function body.
