extends Node2D


func _ready():
	var control_screen = load("res://Screens/teladeseleção.tscn").instance()
	get_tree().current_scene.add_child(control_screen)
