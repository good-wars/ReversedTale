extends Node

func toScene(name):
	get_tree().change_scene_to_file("res://Scenes/Rooms/" + name + ".tscn")

#func toSceneId(id):
	#
