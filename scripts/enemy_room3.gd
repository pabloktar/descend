extends Node2D
var speed = 50
var player_position
var target_position
@onready var player_room_2 = get_parent().get_node("player_room2")

func _physics_process(delta: float) -> void:
	player_position = player_room_2.position
	target_position = (player_position - position).normalized()
	
	if position.distance_to(player_position) > 3:
		position += target_position * speed * delta
	
	















#const speed = 60
#var direction = 1

#@onready var raycast_right: RayCast2D = $raycast_right
#@onready var raycast_left: RayCast2D = $raycast_left


#func _process(delta: float) -> void:
	#if raycast_right.is_colliding():
		#direction = -1
	
	#if raycast_left.is_colliding():
		#direction = 1
	
#	position.x += direction * speed * delta
#
