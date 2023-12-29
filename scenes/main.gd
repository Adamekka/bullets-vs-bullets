extends Node3D

class_name Main

const enemy_square := preload("res://entities/enemies/enemy_square.tscn")


func _enemy_square_spawn():
	var enemy_square_instance: Node3D = enemy_square.instantiate()
	var enemy_square_spawn_pos: Vector3 = Vector3(randf_range(0, 20), 0, randf_range(0, 20))
	enemy_square_instance.position = enemy_square_spawn_pos

	add_child(enemy_square_instance)
