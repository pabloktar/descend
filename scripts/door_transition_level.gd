extends Area2D

var entered = false
func _on_body_entered(body: PhysicsBody2D):
	entered = true


func _on_body_exited(body: PhysicsBody2D):
	entered = false
	
func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("door_opener"):
			get_tree().change_scene_to_file("res://scenes/world3/world_3.tscn")
