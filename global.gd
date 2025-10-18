extends Node

var save_path = "user://flappy_bird.save"

var score: int = 0
var high_score: int = 0
var huidige_avatar: String = "oranje"

func save():
	var bestand = FileAccess.open(save_path, FileAccess.WRITE)
	bestand.store_var(high_score)
	bestand.store_var(huidige_avatar)

func load():
	if FileAccess.file_exists(save_path):
		var bestand = FileAccess.open(save_path, FileAccess.READ)
		
		# Store the values in the existing variables
		high_score = bestand.get_var()  # No arguments here
		huidige_avatar = bestand.get_var()  # No arguments here
	else:
		print("geen data gevonden")
		high_score = 0  # This line is now correct as it's modifying the existing variable
		huidige_avatar = "oranje"
