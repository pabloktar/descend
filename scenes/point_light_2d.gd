extends PointLight2D

const START_SCALE = 0
const SCALE_LIMIT = 1
const SCALE_SPEED = 0.5
const SCALE_MULTIPLIER = 0.3
const ENERGY_MULTIPLIER = 1.0

var isScaling = 0
var isSceneSwitching = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture_scale = START_SCALE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	texture_scale += isScaling * SCALE_SPEED * delta
	if texture_scale >= SCALE_LIMIT:
		texture_scale = SCALE_LIMIT
		isScaling = 0
		isSceneSwitching = true


func _on_menu_start() -> void:
	isScaling = 1
