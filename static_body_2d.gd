extends StaticBody2D
@export var Purple = false

func _ready() -> void:
	print(collision_layer)

func _process(delta: float) -> void:
	if Global.PurpleActive == false:
		if Purple == true:
			$AnimatedSprite2D.play("Purple_Off")
			collision_layer = 16
			collision_mask = 16
		else:
			$AnimatedSprite2D.play("Cyan_On")
			collision_layer = 257
			collision_mask = 257
	else:
		if Purple == true:
			$AnimatedSprite2D.play("Purple_On")
			collision_layer = 257
			collision_mask = 257
		else:
			$AnimatedSprite2D.play("Cyan_Off")
			collision_layer = 16
			collision_mask = 16
