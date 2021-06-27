extends Area2D


enum Items {health1, health2, health3, health4}

var icons = [preload("res://game_graphics/fuel_lpg.png"),
			 preload("res://game_graphics/fuel_pb95.png"),
			 preload("res://game_graphics/fuel_pb98.png"),
			 preload("res://game_graphics/fuel_on.png")]

export (Items) var type = Items.health1

func _ready():
	$Icon.texture = icons[type]
 
func _on_Pickup_body_entered(body):
	match type:
		Items.health1:
			if body.has_method("heal"):
				body.heal(10)
		
		Items.health2:
			if body.has_method("heal"):
				body.heal(20)
		
		Items.health3:
			if body.has_method("heal"):
				body.heal(30)
				
		Items.health4:
			if body.has_method("heal"):
				body.heal(-20)
	queue_free()

