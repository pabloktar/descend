extends Node2D

var rotation_speed = PI

func _ready() -> void:
	$AnimatedSprite2D.play("falling")
	set_process(false)


func _process(delta: float) -> void:
	var direction = 0
	
	rotation += direction * rotation_speed * delta

func _on_camera_2d_can_play() -> void:
	set_process(true)
