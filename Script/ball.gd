extends CharacterBody2D

const SPEED = 500.0

func _ready() -> void:
	set_ball_velocity()
	
func set_ball_velocity():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
		
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1
		
	velocity *= SPEED
	
func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
