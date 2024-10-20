extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	volume_db -= 5*delta


func _on_text_exposition_next_scene() -> void:
	set_process(true) # Replace with function body.
