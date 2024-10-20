extends Node2D

@export var speed : int
var isMoving = 0

const TEXT_SPEED = 10 #char/sec
@export var content : String
var loaded = 0
var letter_delta = 0.0

const FIRST_TEXT_IDX = 1
signal next_text
signal next_scene
@export var last_text = false

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_SPACE:
			if loaded == content.length():
				isMoving = 1
			

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)
	var my_idx = $"..".get_index()
	if(my_idx != FIRST_TEXT_IDX):
		var previous_text = $"../..".get_child(my_idx - 1).get_node("TextExposition")
		previous_text.next_text.connect(_on_previous_text_next_text)

func load_next_letter():
	$Label.text += content[loaded]
	loaded += 1

func _on_previous_text_next_text():
	set_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if loaded != content.length() and letter_delta >= 1.0 / TEXT_SPEED:
		load_next_letter()
		letter_delta = 0.0
	else:
		letter_delta += delta
	
	position += Vector2.UP * speed * isMoving * delta
	if position.y < -200:
		next_text.emit()
		if last_text:
			next_scene.emit()
		queue_free()


func _on_menu_start() -> void:
	set_process(true)
