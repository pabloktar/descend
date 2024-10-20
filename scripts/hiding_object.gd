extends Node2D
@onready var sprite_2d: Sprite2D = $CharacterBody2D/Sprite2D
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var in_range = false
@onready var player = get_node("../Player")

# THIS NEEDS THE PLAYER TO HAVE A FUNCTION FREEZE 

func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	if in_range:
		if Input.is_action_just_pressed("e"): 
			if player.visible:
				player.visible = false
				player.freeze()
			elif not player.visible:
				player.visible = true
				player.unfreeze()
			


func _on_area_2d_body_entered(body: PhysicsBody2D):
	animated_sprite.play("outline")
	in_range = true
	


func _on_area_2d_body_exited(body: PhysicsBody2D):
	animated_sprite.play("default")
	in_range = false
