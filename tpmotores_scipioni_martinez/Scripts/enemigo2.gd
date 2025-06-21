extends CharacterBody2D

var movimiento = Vector2()
var velocidad = 150

func _physics_process(_delta):
	velocity = movimiento
	move_and_slide()
	set_vector(get_node("../Personaje").global_position - global_position)
	Enemigo_derecha()
	Enemigo_izquierda()
	pass
pass

func Enemigo_derecha():
	if movimiento.x > 0:
		$AnimationPlayer.play("Enemy2_derecha")
	pass
pass

func Enemigo_izquierda():
	if movimiento.x < 0:
		$AnimationPlayer.play("Enemy2_izquierda")
	pass
pass
	
func set_vector(vector):
	movimiento = vector.normalized() * velocidad
	pass
pass
