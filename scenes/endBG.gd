extends Node2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#spawner.area_exited.connect(_on_spawner_area_exited)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	set_visible(true)
