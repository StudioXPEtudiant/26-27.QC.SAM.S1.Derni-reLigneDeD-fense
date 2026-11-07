extends CharacterBody2D

@export var damage = -50
@export var Health =  40
@export var speed: float = 300.0

func _physics_process(delta: float) -> void:
	var input_dir: Vector2 = Input.get_vector("Droite", "Gauche", "Haut", "Bas")
	
	if input_dir != Vector2.ZERO:
		velocity = input_dir * speed
	else:
		velocity = velocity.move_toward(Vector2.ZERO, speed)
	
	
	move_and_slide()

func _process(delta: float) -> void:
	var position_souris = get_global_mouse_position()
	# Exemple : Faire pivoter l'objet vers la souris
	if Input.is_action_pressed("Attaque"):
		
		pass
