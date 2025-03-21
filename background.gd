extends CanvasLayer

func _process(_delta: float) -> void:
	$Red.position.x = 1000 * sin($Timer.time_left/10)
	$Blue.position.x = 1000 * sin($Timer.time_left/20)
	$Green.position.x = 1000 * sin($Timer.time_left/40)
