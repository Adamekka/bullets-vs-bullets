extends Node3D


func _process(_delta: float):
	var input_dir: Vector2 = Input.get_vector("shoot_left", "shoot_right", "shoot_down", "shoot_up")
	if input_dir:
		var angle: float = input_dir.angle()
		rotation.y = angle
