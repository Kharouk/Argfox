extends Node2D

func create_grass_effect() -> void:
	var GrassEffect = load("res://Scenes/Effects/GrassEffect.tscn")
	var grassEffect = GrassEffect.instance()
	
	get_parent().add_child(grassEffect)
	grassEffect.position = position

func _on_Hurtbox_area_entered(_area) -> void:
	create_grass_effect()
	queue_free()
