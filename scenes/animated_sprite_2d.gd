extends AnimatedSprite2D

var toAngleDegree = 30
var fromRotateAngle = 136
var speed = PI/4

signal endthegame

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += delta * (toAngleDegree-fromRotateAngle) / 180 * PI * speed
	if rotation <= toAngleDegree / 180.0 * PI:
		set_process(false)

func _on_camera_2d_can_play() -> void:
	endthegame.emit()#		set_process(true) # Replace with function body.


func _on_timer_timeout() -> void:
	set_process(true)
