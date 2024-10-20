extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	color = Color(color.r, color.g, color.b, color.a+0.5*delta)
	if color.a > 0.99:
		get_tree().change_scene_to_file("res://scenes/level1/level_1.tscn")


func _on_text_exposition_next_scene() -> void:
	set_process(true)
