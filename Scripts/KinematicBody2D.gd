extends KinematicBody2D

var block = ''

var velocidade = 400

func _ready():
	pass
	
func _physics_process(delta):
	var movimento = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		block = 'left'

	elif Input.is_action_pressed("ui_right"):
		block = 'right'

	elif Input.is_action_pressed("ui_down"):
		block = 'down'
		
	elif Input.is_action_pressed("ui_up"):
		block = 'up'
		
	if block == 'left':
		movimento.x -= velocidade
	elif block == 'right': 
		movimento.x += velocidade
	elif block == 'down':
		movimento.y += velocidade
	elif block == 'up':
		movimento.y -= velocidade			
	
	movimento = movimento.normalized()
	
	move_and_slide(movimento*velocidade)
