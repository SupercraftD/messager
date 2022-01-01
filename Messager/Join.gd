extends Control


func _ready():
	pass

func _on_create_pressed():
	Singleton.initalize_as_server($Create/Name.text, $Create/Port.text, $Create/Max.text)
	get_tree().change_scene("res://Chat.tscn")

func _on_join_pressed():
	Singleton.initialize_as_client($Join/Name.text, $Join/IP.text, $Join/Port.text)
	get_tree().change_scene("res://Chat.tscn")
