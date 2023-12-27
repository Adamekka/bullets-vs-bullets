extends Camera3D

@export var target: Node3D


func _process(_delta: float):
	if target:
		var pos: Vector3 = target.position
		pos.y += 10
		pos.z += 10
		position = pos
