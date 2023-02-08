extends Control


func _ready():
	pass


func _on_Botoaluno_draw(control):
	var rect = control.get_item_rect()
	var color = Color(0,0,0)
	draw_rect(rect, color)
	rect.position.x += 1
	rect.position.y += 1
	rect.size.x -= 2
	rect.size.y -= 2
	draw_rect(rect, Color(1,1,1))
