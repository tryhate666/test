extends Node2D

var peer = ENetMultiplayerPeer.new()
var port = 49149

func _on_host_pressed() -> void:
	peer.create_server(port)
	multiplayer.multiplayer_peer = peer
	spawn_unit(multiplayer.get_unique_id())
	
	multiplayer.peer_connected.connect(
		func(id): 
		print("Connected peer id = ",id)
		spawn_unit(id))


func _on_join_pressed() -> void:
	peer.create_client("localhost",port)
	multiplayer.multiplayer_peer = peer



func spawn_unit(id):
	$"..".spawn_unit(id)
