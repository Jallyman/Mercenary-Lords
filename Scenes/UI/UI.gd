extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	Maps.mainMap = get_child(0)
	Maps.underground = load("res://Scenes/Maps/Underground.tscn").instance()
	
	pass

#func _process(delta):

#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
