extends CharacterBody2D

const GRAVITY : int = 1000
const MAX_VEL : int = 600
const FLAP_SPEED : int = -500
var dead : bool = false

func _physics_process(delta):
	if dead == true:
		$Sprite.stop()
	else:
		# gravity
		velocity.y += GRAVITY * delta
		# terminal velocity
		if velocity.y > MAX_VEL:
			velocity.y = MAX_VEL
		# bonderies
		if position.y > get_viewport().size[1]:
			velocity.y = -10
	
		if Input.is_action_pressed("spring") and position.y > 105:
			fly()
	
		move_and_collide(velocity * delta)
		
func fly():
	velocity.y = FLAP_SPEED
	if Global.huidige_avatar == "oranje":
		$Sprite.play("oranje")
	elif Global.huidige_avatar == "blauw":
		$Sprite.play("blauw")
	elif Global.huidige_avatar == "rood":
		$Sprite.play("rood")
	else:
		OS.alert("invalid avatar name","ERROR")

func _on_pipe_hit() -> void:
	dead = true
