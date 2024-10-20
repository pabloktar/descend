extends Area2D

@export var backgroundScene: PackedScene
const OFFSET = 464


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_bg_instance(100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	spawn_bg_instance()
	
	
func spawn_bg_instance(offset = OFFSET):
	var bg = backgroundScene.instantiate()
	#var bg_height = bg.get_node("Collider")
	bg.position = Vector2.DOWN * offset
	add_child(bg)
	print("Background spawned")
