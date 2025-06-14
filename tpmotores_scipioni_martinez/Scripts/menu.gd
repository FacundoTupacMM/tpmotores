extends Node2D

signal jugar

func _on_Jugar_pressed() -> void:
	emit_signal("jugar")
	pass
