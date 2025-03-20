extends Control
@export var level_number = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = "Level " + level_number
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	$Label.visible = false
