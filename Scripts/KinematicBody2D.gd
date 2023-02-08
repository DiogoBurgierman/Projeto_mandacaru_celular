extends KinematicBody2D

var velocidade = 400

var i = 0

func _ready():
	pass
	
func _physics_process(delta):
	
	var x=get_parent().get_node("AbaDeSelecao/Comandos")
	
	var movimento = Vector2()
	
	if x.iniciou==true:
		
		
		#if Input.is_action_pressed("ui_left"):
			#block = 'esquerda'

		#elif Input.is_action_pressed("ui_right"):
			#block = 'direita'

		#elif Input.is_action_pressed("ui_down"):
			#block = 'baixo'
			
		#elif Input.is_action_pressed("ui_up"):
			#block = 'cima'
			
		if x.array[i] == "esquerda":
			movimento.x -= velocidade
		elif x.array[i] == "direita": 
			movimento.x += velocidade
		elif x.array[i] == "baixo":
			movimento.y += velocidade
		elif x.array[i] == "cima":
			movimento.y -= velocidade			
			
		movimento = movimento.normalized()
		
		var y =move_and_slide(movimento*velocidade)
		
		if y.x<10.0 and y.y<10.0:
			print(i)
			i = i + 1
			
		
		
