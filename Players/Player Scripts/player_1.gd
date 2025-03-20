extends Area2D

@export var speed = 400
var screen_size
var is_jumping = false

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _input(event):
	if event.is_action_pressed("jump"):
		jump()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO # The player's movement vector.
	velocity = Input.get_vector("move left", "move right", "move up", "move down")
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	if velocity.x != 0 or velocity.y != 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.stop()
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
func jump():
	$AnimatedSprite2D.position += 100
