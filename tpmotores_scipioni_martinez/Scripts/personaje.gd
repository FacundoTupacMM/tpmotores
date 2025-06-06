extends CharacterBody2D

var movimiento = Vector2()
var velocidad = 3

func _physics_process(delta):
	Mover()
	pass

func Mover():
	Mover_Derecha()
	Mover_Izquierda()
	Mover_Arriba()
	Mover_Abajo()
	Parar()
	move_and_collide(movimiento)
	pass

func Mover_Derecha():
	if Input.is_action_pressed("ui_right"):
		movimiento.x = velocidad
		$AnimationPlayer.play("Derecha")
	pass

func Mover_Izquierda():
	if Input.is_action_pressed("ui_left"):
		movimiento.x = -velocidad
		$AnimationPlayer.play("Izquierda")
	pass

func Mover_Arriba():
	if Input.is_action_pressed("ui_up"):
		movimiento.y = -velocidad
		$AnimationPlayer.play("Arriba")
	pass

func Mover_Abajo():
	if Input.is_action_pressed("ui_down"):
		movimiento.y = velocidad
		$AnimationPlayer.play("Abajo")
	pass

func Parar():
	if (Input.is_action_just_released("ui_right") or
			Input.is_action_just_released("ui_left") or 
			Input.is_action_just_released("ui_up") or 
			Input.is_action_just_released("ui_down")):
		movimiento.x = 0
		movimiento.y = 0
		$AnimationPlayer.stop()
	pass
