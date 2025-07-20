class_name Player extends CharacterBody2D

var speed: float = 200
var move_position = null

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("move"):
		move_position = get_global_mouse_position()


func _physics_process(_delta: float) -> void:
	if move_position:
		velocity = position.direction_to(move_position) * speed
		if position.distance_to(move_position) < 10:
			velocity = Vector2.ZERO
	move_and_slide()
