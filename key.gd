extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("Idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AnimatedSprite2D.position.y = 10 * sin($Timer.time_left)



func _on_body_entered(body: CharacterBody2D) -> void:
	Global.KeyCollected = true
	visible = false
