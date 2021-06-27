extends Node

var current_level = 0
var levels = ["res://Titlescreen/TitleScreen.tscn","res://Main/Main.tscn"]

func restart():
	current_level = 0
	get_tree().change_scene(levels[current_level])
	
func next_level():
	current_level += 1
	printt("level", current_level)
	if current_level < levels.size():
		get_tree().change_scene(levels[current_level])
	else:
		restart()
