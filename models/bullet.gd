extends RigidBody3D

class_name Bullet

const SPEED: float = 12
const TIME_TO_LIVE: float = 5


func _ready():
	await get_tree().create_timer(TIME_TO_LIVE).timeout
	queue_free()


func _physics_process(delta: float):
	position += get_meta("direction") * SPEED * delta
