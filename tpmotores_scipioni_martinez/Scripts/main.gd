extends Node2D

var musica_menu = preload("res://Sonidos/MenuMusic.mp3")
var musica_battle = preload("res://Sonidos/BattleMusic.mp3")

func _ready():
	Reproducir_Musica_Menu()
	Ocultar_Mensaje_Final()
	if Global.rejugar:
		_on_menu_jugar()
	else:
		get_tree().paused = true
		$Menu/Rejugar.visible = false
		$Menu/Rejugar.disabled = true
	pass
pass

func Reproducir_Musica_Menu():
	$Musica.stream = musica_menu
	$Musica.play()
	pass
pass

func Reproducir_Musica_Battle():
	$Musica.stream = musica_battle
	$Musica.play()
	pass
pass

func Ocultar_Mensaje_Final():
	$Menu/Ganaste.visible = false
	$Menu/Perdiste.visible = false
	pass
pass

func _on_menu_jugar():
	$Menu.Detener_animacion_intro()
	get_tree().paused = false
	$Menu.visible = false
	Reproducir_Musica_Battle()
	pass
pass

func _on_bandera_gana():
	$Enemigo.queue_free()
	$Bandera.queue_free()
	Mostrar_Menu_Para_Rejugar()
	Mostrar_Ganaste()
	Global.rejugar = true
	get_tree().paused = true
	Reproducir_Musica_Menu()
	pass
pass

func _on_bandera_pierde():
	$Personaje.queue_free()
	Mostrar_Menu_Para_Rejugar()
	Mostrar_Perdiste()
	Global.rejugar = true
	get_tree().paused = true
	Reproducir_Musica_Menu()
	pass
pass

func Mostrar_Menu_Para_Rejugar():
	$Menu.Reproducir_animacion_intro()
	$Menu.visible = true
	$Menu/Jugar.visible = false
	$Menu/Jugar.disabled = true
	$Menu/Rejugar.visible = true
	$Menu/Rejugar.disabled = false
pass

func Mostrar_Ganaste():
	$Menu/Ganaste.visible = true
	$Menu/Perdiste.visible = false
	pass
pass

func Mostrar_Perdiste():
	$Menu/Ganaste.visible = false
	$Menu/Perdiste.visible = true
	pass
pass

func _on_menu_rejugar():
	get_tree().reload_current_scene()
	pass
pass

func _on_menu_salir():
	get_tree().quit()
	pass
pass
