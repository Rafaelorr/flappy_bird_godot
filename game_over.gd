extends Node2D

func _ready() -> void:
	$Label.hide()

func _on_pipe_hit() -> void:
	$Label.show()
