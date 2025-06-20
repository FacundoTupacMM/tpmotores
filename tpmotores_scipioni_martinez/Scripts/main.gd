extends Node2D

func _ready():
	if Global.rejugar:
		_on_menu_jugar()
	else:
		get_tree().paused = true
		$Menu/Rejugar.visible = false
		$Menu/Rejugar.disabled = true
	pass
pass
	
func _on_menu_jugar():
	get_tree().paused = false
	$Menu.visible = false
	pass
pass

func _on_bandera_gana():
	$Enemigo.queue_free()
	$Bandera.queue_free()
	Mostrar_Menu_Para_Rejugar()
	Global.rejugar = true
	get_tree().paused = true
	pass
pass

func _on_bandera_pierde():
	$Personaje.queue_free()
	Mostrar_Menu_Para_Rejugar()
	Global.rejugar = true
	get_tree().paused = true
	pass
pass

func Mostrar_Menu_Para_Rejugar():
	$Menu.visible = true
	$Menu/Jugar.visible = false
	$Menu/Jugar.disabled = true
	$Menu/Rejugar.visible = true
	$Menu/Rejugar.disabled = false
pass

func _on_menu_rejugar():
	get_tree().reload_current_scene()
	pass
pass

func _on_menu_salir():
	get_tree().quit()
	pass
pass
