extends RigidBody3D

class_name EnemySquare

const SPEED: int = 10
const TIME_TO_LIVE: float = 10


func _ready():
	await get_tree().create_timer(TIME_TO_LIVE).timeout
	queue_free()


func _physics_process(delta):
	var player_pos: Vector3 = get_node("/root/main/Player").position
	position = position.move_toward(player_pos, delta * SPEED)
	position.y = 1.5
	rotation.y += delta * 10

	if position.distance_to(player_pos) < 2:
		get_tree().quit()
