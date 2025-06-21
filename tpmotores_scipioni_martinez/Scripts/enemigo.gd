extends CharacterBody2D

var movimiento = Vector2()
var velocidad = 1.5

func _physics_process(_delta):
	move_and_collide(movimiento)
	set_vector(get_node("../Bandera").global_position - global_position)
	Enemigo_derecha()
	Enemigo_izquierda()
	pass
pass

func Enemigo_derecha():
	if movimiento.x > 0:
		$AnimationPlayer.play("Enemy_derecha")
	pass
pass

func Enemigo_izquierda():
	if movimiento.x < 0:
		$AnimationPlayer.play("Enemy_izquierda")
	pass
pass
	
func set_vector(vector):
	movimiento = vector.normalized() * velocidad
	pass
pass

func Enemigo_intro_mover_izquierda():
	$AnimationPlayer.play("Enemy_izquierda")
	pass
pass

func Enemigo_intro_mover_derecha():
	$AnimationPlayer.play("Enemy_derecha")
	pass
pass

func Enemigo_intro_parar():
	$AnimationPlayer.pause()
	pass
pass
