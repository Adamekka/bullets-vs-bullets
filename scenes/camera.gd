extends Camera3D

@export var target: Node3D


func _process(_delta: float):
	if target:
		var pos: Vector3 = target.position
		pos.y += 10
		pos.z += 10

		# Wait for a cool camera effect
		await get_tree().create_timer(0.1).timeout

		position = pos
