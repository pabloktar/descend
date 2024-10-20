extends TileMapLayer

var speed = 100
var direction = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.DOWN * speed
	position += velocity * delta
	


func _on_timer_timeout() -> void:
	position += Vector2.UP * speed
