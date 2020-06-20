extends KinematicBody2D


func _physics_process(delta: float):
	var speed = 100

	var x: float = 0
	if Input.is_action_pressed("move_left"):
		x -= 1
	if Input.is_action_pressed("move_right"):
		x += 1
	
	var y: float = 0
	if Input.is_action_pressed("move_up"):
		y -= 1
	if Input.is_action_pressed("move_down"):
		y += 1
	
	var velocity = Vector2(x, y) * speed
	move_and_slide(velocity)
