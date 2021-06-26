extends Node2D

func _ready():
	for node in get_children():
		node.hide()

func _process(delta):
	global_rotation = 0

func update_healthbar(value):
	if value < 100:
		$HealthBar.show() 
	
	$HealthBar.value = value


