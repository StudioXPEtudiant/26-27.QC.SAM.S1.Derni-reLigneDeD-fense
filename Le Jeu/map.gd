extends Node2D

#func _process(delta: float) -> void:
	#if Input.is_action_just_pressed("reload map"):
		#get_tree().reload_curent_scene()
		#pass
	#pass
#func recharger_niveau() -> void:
	## Recharge instantanément la scène en cours
	#get_tree().reload_current_scene()
