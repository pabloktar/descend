extends Camera2D

var hasZoomed = true
const ZOOM_SPEED = 1
const MAX_ZOOM = 1
# Called when the node enters the scene tree for the first time.

signal can_play

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !hasZoomed:
		zoom -= Vector2.ONE * ZOOM_SPEED * delta
		if zoom.x <= MAX_ZOOM:
			zoom = Vector2(MAX_ZOOM, MAX_ZOOM)
			hasZoomed = true 
			can_play.emit()
		


func _on_timer_timeout() -> void:
	hasZoomed = false
	print("zooming out")
