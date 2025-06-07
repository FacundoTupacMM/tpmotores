extends Node2D


func _on_area_2d_body_entered(body: Node2D):
	if body.name == "Personaje":
		$Enemigo.queue_free()
		$Bandera.queue_free()
		pass
	
	if body.name == "Enemigo":
		$Personaje.queue_free()
		pass
