extends Node2D

var next = false


func _ready():
	var control_screen = load("res://Screens/AbaDeSelecao.tscn").instance()
	get_tree().current_scene.add_child(control_screen)


func _on_Area2D_body_entered(body):
	#$KinematicBody2D.block = ''
	next = true
