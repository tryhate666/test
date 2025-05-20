extends Node2D

@export var player_scene: PackedScene


func spawn_unit(id):
	var player = player_scene.instantiate()
	player.name = str(id)
	print("Player ID = ", id)
	print("Player Name = ",player.name)
	add_child(player)
	
