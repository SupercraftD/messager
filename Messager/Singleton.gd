extends Node

var player_name
var peer

func initalize_as_server(name, port,maxplayers):
	peer = NetworkedMultiplayerENet.new()
	peer.create_server(int(port), int(maxplayers))
	get_tree().network_peer = peer
	
	player_name = name

func initialize_as_client(name,ip,port):
	peer = NetworkedMultiplayerENet.new()
	peer.create_client(ip,int(port))
	get_tree().network_peer = peer
	
	player_name = name

func disconnect_self():
	peer.close_connection()
	get_tree().change_scene("res://Join.tscn")
