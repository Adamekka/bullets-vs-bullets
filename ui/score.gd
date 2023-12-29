extends Label


func _process(_delta: float):
	text = "Score: " + str(Global.score)
