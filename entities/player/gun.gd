extends Node3D

class_name Gun

const bullet := preload("res://models/bullet.tscn")

var bullet_spawn_counter: int = 0
var bullet_delay: int = 20


func _physics_process(_delta: float):
	var input_dir: Vector2 = Input.get_vector("shoot_left", "shoot_right", "shoot_down", "shoot_up")

	# Not shooting
	if !input_dir:
		return

	rotation.y = input_dir.angle()

	# Shoot
	if bullet_spawn_counter % bullet_delay == 0:
		var bullet_instance: Node3D = bullet.instantiate()
		var direction: Vector3 = Vector3(input_dir.x, 0, -input_dir.y)
		bullet_instance.set_meta("direction", direction)

		var player_pos: Vector3 = get_parent().position
		var offset: Vector3 = Vector3(input_dir.x, 0, -input_dir.y) * 1.5
		bullet_instance.position = player_pos + offset

		get_parent().add_sibling(bullet_instance)

	bullet_spawn_counter += 1
