extends Node2D

func _on_bandera_gana() -> void:
	$Enemigo.queue_free()
	$Bandera.queue_free()
	pass

func _on_bandera_pierde() -> void:
	$Personaje.queue_free()
	pass
