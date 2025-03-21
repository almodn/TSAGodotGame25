extends Area2D

@export var destination = ""
@export var KeyHere = true
@export var ButtonHere = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("closed")
	$AnimatedSprite2D2.play("default")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: CharacterBody2D) -> void:
	if KeyHere == true and ButtonHere == true:
		if Global.KeyCollected == true and Global.ButtonPressed == true:
			$AnimatedSprite2D.play("open")
			$Timer.start()
	if KeyHere == false and ButtonHere == true:
		if Global.ButtonPressed == true:
			$AnimatedSprite2D.play("open")
			$Timer.start()
	if KeyHere == true and ButtonHere == false:
		if Global.KeyCollected == true:
			$AnimatedSprite2D.play("open")
			$Timer.start()
	if KeyHere == false and ButtonHere == false:
		get_tree().change_scene_to_file(destination)


func _on_timer_timeout() -> void:
	Global.KeyCollected = false
	get_tree().change_scene_to_file(destination)
