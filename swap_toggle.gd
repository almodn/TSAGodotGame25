extends StaticBody2D

func _ready() -> void:
	$AnimatedSprite2D.play("Cyan On")

func _process(delta: float) -> void:
	$AnimatedSprite2D.position.y = -80 * sin($Timer.time_left)

func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	if Global.PurpleActive == false: 
		Global.PurpleActive = true
		$AnimatedSprite2D.play("Purple On")
		$Timer.start()
	elif Global.PurpleActive == true: 
		Global.PurpleActive = false
		$AnimatedSprite2D.play("Cyan On")
		$Timer.start()
