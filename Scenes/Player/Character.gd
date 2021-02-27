extends Sprite

var motion = Vector2()

var gold = 0
var strength = 0

func _physics_process(delta):
	var space_state = get_world_2d().direct_space_state
	var position = get_position() + Vector2(16,16)
	
	if Input.is_action_just_pressed("ui_right"):
		motion.x = 32
		motion.y = 0
		
	elif Input.is_action_just_pressed("ui_left"):
		motion.x = -32
		motion.y = 0
		
	elif Input.is_action_just_pressed("ui_down"):
		motion.y = 32
		motion.x = 0
		
	elif Input.is_action_just_pressed("ui_up"):
		motion.y = -32
		motion.x = 0
		
	else:
		motion.x = 0
		motion.y = 0
		
	# Checks collision against space state and excludes its own StaticBody2D
	if(motion.length() != 0 && space_state.intersect_ray(position, position + motion, [get_child(0)]).empty()):

		translate(motion)
	pass
