extends Area2D

@export var destination = ""
@export var KeyHere = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if KeyHere == true:
		$AnimatedSprite2D.play("closed")
	elif KeyHere == true:
		$AnimatedSprite2D.play("open")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: CharacterBody2D) -> void:
	if KeyHere == true:
		if Global.KeyCollected == true:
			$AnimatedSprite2D.play("open")
			$Timer.start()
	elif KeyHere == false:
		get_tree().change_scene_to_file(destination)




func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file(destination)
