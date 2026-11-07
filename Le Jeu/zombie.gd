extends CharacterBody2D

@export var damage = -50
@export var Health = 100
var cible: Node2D  = null# Glissez-déposez l'objet à cibler dans l'inspecteur
@export var vitesse: float = 150.0

func _ready() -> void:
	# Attendre un court instant pour s'assurer que toute la scène principale est chargée
	await get_tree().process_frame
	
	# Chercher le premier nœud du groupe "joueur"
	var cibles = get_tree().get_nodes_in_group("Target")
	if cibles.size() > 0:
		cible = cibles[0]

func _physics_process(delta: float) -> void:
	if cible and is_instance_valid(cible): # Vérifie aussi que la cible n'a pas été détruite
		var direction = (cible.global_position - global_position).normalized()
		velocity = direction * vitesse
		move_and_slide()
	
	if Input.is_action_pressed("Attaque"):
		Health = Health + damage
	if Health <= 0:
		queue_free()
#
