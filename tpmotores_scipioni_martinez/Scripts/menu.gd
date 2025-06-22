extends Node2D

signal jugar
signal salir
signal rejugar

func _ready():
	$Personaje.set_physics_process(false)
	$Enemigo.set_physics_process(false)
	Reproducir_animacion_intro()
	pass
pass

func _on_jugar_pressed():
	emit_signal("jugar")
	pass
pass

func _on_salir_pressed():
	emit_signal("salir")
	pass
pass

func _on_rejugar_pressed():
	emit_signal("rejugar")
	pass
pass

func Reproducir_animacion_intro():
	$AnimationIntro.stop()
	$AnimationIntro.play("intro")
	pass
pass
