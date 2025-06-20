extends CharacterBody2D

var movimiento = Vector2()
var velocidad = 2

func _physics_process(_delta):
	move_and_collide(movimiento)
	set_vector(get_node("../Bandera").global_position - global_position)
	Animar_Enemigo_Segun_Sentido()
	pass
pass

func Animar_Enemigo_Segun_Sentido():
	if movimiento.x < 0:
		$AnimationPlayer.play("Enemy_izquierda")
	else:
		$AnimationPlayer.play("Enemy_derecha")
	pass
pass
	
func set_vector(vector):
	movimiento = vector.normalized() * velocidad
	pass
pass
