extends RigidBody3D

class_name Bullet

const SPEED: float = 12
const TIME_TO_LIVE: float = 5


func _physics_process(delta: float):
	position += get_meta("direction") * SPEED * delta

	# Destroy bullet after TTL
	await get_tree().create_timer(TIME_TO_LIVE).timeout
	queue_free()