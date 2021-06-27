extends Node2D

func _ready():
	Input.set_custom_mouse_cursor(load("res://UI/assets/crossair_red.png"), Input.CURSOR_ARROW, Vector2(20, 20))
	
func _on_Tank_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)

func _on_Player_dead():
	 Globals.restart()
