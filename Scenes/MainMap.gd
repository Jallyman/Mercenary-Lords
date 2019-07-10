extends TileMap

# class member variables go here, for example:
var i = 2

# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):

	if(self.has_node("Mob") == false):
		print_tree()
		i+= 1
		print(i)
		if(i == 200):
			var Mob = load("res://scenes/Mob.tscn").instance()
			var tileMap = get_node("/root/Node/TileMap")
			Mob.set_name("Mob")
			Mob.set_position(Vector2(64,64))
			tileMap.add_child(Mob)
			i = 0
	
	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
