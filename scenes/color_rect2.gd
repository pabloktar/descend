extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	color = Color(color.r, color.g, color.b, color.a+0.5*delta)
	if color.a > 0.99:
		get_tree().quit()


func _on_text_exposition_next_scene() -> void:
	set_process(true)


func _on_animated_sprite_2d_endthegame() -> void:
	pass#set_process(true)
