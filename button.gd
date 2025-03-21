extends Area2D

func _ready() -> void:
	$AnimatedSprite2D.play("unpressed")

func pressed():
	$AnimatedSprite2D.play("pressed")
	Global.ButtonPressed = true
