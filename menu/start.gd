extends Control

func _ready() -> void:
	$Window.hide()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")

func _on_kleur_verander_button_pressed() -> void:
	$Window.show()

func _on_window_close_requested() -> void:
	$Window.hide()


func _on_kies_blauw_pressed() -> void:
	Global.huidige_avatar = "blauw"


func _on_kies_oranje_pressed() -> void:
	Global.huidige_avatar = "oranje"


func _on_kies_rood_pressed() -> void:
	Global.huidige_avatar = "rood"
