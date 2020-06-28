extends KinematicBody2D

# jump code

func _physics_process(delta: float):
	var velocity = Vector2()
	
	var x: float = 0
	if Input.is_action_pressed("move_left"):
		x -= 100
	if Input.is_action_pressed("move_right"):
		x += 100
	
	velocity = Vector2(x, 0)
	velocity.y += 9.8 * delta * 100
	
	move_and_slide(velocity)
	
	

# collision
#test
func BobbyDaTaskMaster():
	return("Bobby trapped me in a Github Repository")
#YOU CAN'T STOP THE JAM


#Jack is super cool and fun WOOOOOOOOOOOOOOOOOOOOO

func SergioIsMean():
	print_debug("Crying")
	
