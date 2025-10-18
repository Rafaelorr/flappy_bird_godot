extends Node2D

# bepalen spawn positie
const bodem_positie : float = 450
const hoog_positie : float = 250

const start_snelheid : float = 4.5

var speed : float = start_snelheid
var player_in_area = false
var game_over = false

signal hit
signal scored

func _on_hit_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("speler"):
		print("hit")
		game_over = true
		emit_signal("hit")

func _on_score_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("speler"):
		print("score")
		emit_signal("scored")

func _process(delta: float) -> void:
	if not game_over:
		position.x -= speed
		if position.x < -122:
			position.x = 1253
			position.y = randf_range(bodem_positie, hoog_positie)
			speed += 0.05
