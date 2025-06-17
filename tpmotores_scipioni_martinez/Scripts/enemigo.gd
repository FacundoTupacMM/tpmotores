extends CharacterBody2D

var movimiento = Vector2()
var velocidad = 2

func _physics_process(delta):
	move_and_collide(movimiento)
	set_vector(get_node("../Bandera").global_position - global_position)
	pass
pass
	
func set_vector(vector):
	movimiento = vector.normalized() * velocidad
	pass
pass
