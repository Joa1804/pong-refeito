extends CharacterBody2D

const SPEED = 470.0
var Ball

func _ready() -> void:
	Ball = get_parent().get_node("Ball")

func _physics_process(delta: float) -> void:
	
	if abs(Ball.position.y - position.y) < 10:
		return
	
	if Ball.position.y > position.y:
		velocity.y = 1
	else:
		velocity.y = -1
		
	velocity *= SPEED
	
	move_and_collide(velocity * delta)
