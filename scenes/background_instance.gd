extends Node2D

@export var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var spawner = get_parent()
	#spawner.area_exited.connect(_on_spawner_area_exited)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.UP * speed
	position += velocity * delta

func _on_spawner_area_exited():
	print("Area despawned")
	queue_free()
