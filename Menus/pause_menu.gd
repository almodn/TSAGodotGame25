extends Control

func _ready():
	$AnimationPlayer.play("RESET")

func resume():
	get_tree().paused=false
	$AnimationPlayer.play_backwards("Blur")

func pause():
	get_tree().paused=true
	$AnimationPlayer.play("Blur")

func testesc():
	if Input.is_action_just_pressed("pause") and get_tree().paused== false:
		pause()
	elif Input.is_action_just_pressed("pause") and get_tree().paused== true:
		resume()

func _on_unpause_pressed() -> void:
	resume()

func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://Menus/MainMenu.tscn")

func _input(event):
	if event.is_action_pressed("pause"):
		testesc()
