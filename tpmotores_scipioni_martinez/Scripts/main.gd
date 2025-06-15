extends Node2D

func _ready():
	if Global.rejugar:
		_on_menu_jugar()
	else:
		get_tree().paused = true
		$Menu/Rejugar.visible = false
		$Menu/Rejugar.disabled = true
	pass
	
func _on_menu_jugar():
	get_tree().paused = false
	$Menu.visible = false
	pass

func _on_bandera_gana():
	$Enemigo.queue_free()
	$Bandera.queue_free()
	$Menu.visible = true
	$Menu/Jugar.visible = false
	$Menu/Jugar.disabled = true
	$Menu/Rejugar.visible = true
	$Menu/Rejugar.disabled = false
	Global.rejugar = true
	get_tree().paused = true
	pass

func _on_bandera_pierde():
	$Personaje.queue_free()
	$Menu.visible = true
	$Menu/Jugar.visible = false
	$Menu/Jugar.disabled = true
	$Menu/Rejugar.visible = true
	$Menu/Rejugar.disabled = false
	Global.rejugar = true
	get_tree().paused = true
	pass

func _on_menu_rejugar():
	get_tree().reload_current_scene()
	pass

func _on_menu_salir():
	get_tree().quit()
	pass
