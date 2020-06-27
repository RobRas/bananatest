extends KinematicBody2D


func _physics_process(delta: float):
	var x: float = 0
	if Input.is_action_pressed("move_left"):
		x -= 100
	if Input.is_action_pressed("move_right"):
		x += 100
	
	var y: float = 0
	if Input.is_action_pressed("move_up"):
		y -= 100
	if Input.is_action_pressed("move_down"):
		y += 100
	
	var velocity = Vector2(x, y)
	move_and_slide(velocity)

# collision
