extends KinematicBody2D

export var speed = 100.0

export var x_bounds = Vector2(10, 1000)
export var y_bounds = Vector2(10, 700)

var _moving = false
var _target_position = Vector2()


func _process(delta):
	if not _moving:
		return
	
	var distance = (_target_position - position).length()
	var direction = (_target_position - position).normalized()
	
	move_and_slide(direction * speed)
	
	if distance < 5.0:
		_moving = false
		$WanderTimer.start()


func _on_WanderTimer_timeout():
	var x = rand_range(x_bounds.x, x_bounds.y)
	var y = rand_range(y_bounds.x, y_bounds.y)

	_target_position = Vector2(x, y)
	_moving = true
