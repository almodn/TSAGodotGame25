extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -500.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move left", "move right")
	if direction: 
		velocity.x = direction * SPEED
	else: 
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if is_on_floor():
		if velocity.x != 0: 
			$AnimatedSprite2D.play("walk")
		else: 
			$AnimatedSprite2D.play("idle")
	
	if velocity.x > 0: 
		$AnimatedSprite2D.flip_h = false
	elif velocity.x < 0: 
		$AnimatedSprite2D.flip_h = true
	
	if not is_on_floor():
		$AnimatedSprite2D.play("jump")

	move_and_slide()
