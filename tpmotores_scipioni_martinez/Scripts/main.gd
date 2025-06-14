extends Node2D

func _on_bandera_gana():
	$Enemigo.queue_free()
	$Bandera.queue_free()
	pass
	
func _on_bandera_pierde():
	$Personaje.queue_free()
	pass
