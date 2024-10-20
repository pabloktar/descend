extends Node2D

@export var speed : int
var isMoving = 0
var isStarted = false
signal start


func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_SPACE:
			isMoving = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2.UP * speed * isMoving * delta
	
	if position.y <= 0 and not isStarted:
		start.emit()
		isStarted = true
		
