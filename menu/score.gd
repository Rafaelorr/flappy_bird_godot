extends CanvasLayer

func _process(delta: float) -> void:
	$Scorecounter.text = "Score: " + str(Global.score)

func _on_pipe_scored() -> void:
	Global.score += 1
