extends CharacterBody2D

const SPEED = 600.0

func _physics_process(delta: float) -> void:

	var direction := Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	var colision = move_and_collide(velocity * delta)
	if colision:
		velocity = Vector2.ZERO
