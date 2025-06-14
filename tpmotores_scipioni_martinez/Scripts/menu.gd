extends Node2D

signal jugar

func _on_jugar_pressed():
	emit_signal("jugar")
	pass
