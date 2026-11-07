extends MeshInstance2D

func _process(delta: float) -> void:
	var position_souris = get_global_mouse_position()
	look_at(position_souris)
# Au lieu de modifier uniquement la rotation :
func rotate_around_custom_pivot(angle: float, local_pivot: Vector2):
	# Décale la position pour compenser le changement de pivot
	position += local_pivot.rotated(rotation)
	rotation += angle
	position -= local_pivot.rotated(rotation)
