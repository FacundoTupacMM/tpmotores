extends Sprite2D

signal gana
signal pierde

func _ready() -> void:
	$AnimationPlayer.play("Bandera")
	pass
pass

func _on_area_2d_body_entered(body):
	if body.name == "Personaje":
		emit_signal("gana")
	else:
		emit_signal("pierde")
	pass
pass
