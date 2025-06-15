extends Node2D

func _ready():
	get_tree().paused = true
	pass
	
func _on_menu_jugar():
	get_tree().paused = false
	$Menu.visible = false
	pass

func _on_bandera_gana():
	$Enemigo.queue_free()
	$Bandera.queue_free()
	get_tree().paused = true
	$Menu.visible = true
	pass

func _on_bandera_pierde():
	$Personaje.queue_free()
	get_tree().paused = true
	$Menu.visible = true
	pass

func _on_menu_rejugar():
	get_tree().paused = false
	$Menu.visible = false
	pass

func _on_menu_salir():
	get_tree().quit()
	pass
