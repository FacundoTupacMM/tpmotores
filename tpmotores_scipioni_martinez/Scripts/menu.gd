extends Node2D

signal jugar
signal salir
signal rejugar

func _on_jugar_pressed():
	emit_signal("jugar")
	pass

func _on_salir_pressed():
	emit_signal("salir")
	pass

func _on_rejugar_pressed():
	emit_signal("rejugar")
	pass
