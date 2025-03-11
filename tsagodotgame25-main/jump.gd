extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Timer.time_left == 0:
		$AnimatedSprite2D.play("idle")


func _on_body_entered(body: CharacterBody2D) -> void:
	if $Timer.time_left == 0:
		$AnimatedSprite2D.play("jump")
		body.velocity.y = -1000
		$Timer.start()
