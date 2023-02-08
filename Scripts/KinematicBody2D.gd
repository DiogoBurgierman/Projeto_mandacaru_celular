extends KinematicBody2D

var velocidade = 100

func _ready():
	pass
	
func _physics_process(delta):
	var movimento = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		movimento.x -= velocidade
	elif Input.is_action_pressed("ui_right"):
		movimento.x += velocidade
	elif Input.is_action_pressed("ui_down"):
		movimento.y += velocidade
	elif Input.is_action_pressed("ui_up"):
		movimento.y -= velocidade	
	
	movimento = movimento.normalized()
	
	move_and_slide(movimento*velocidade)
