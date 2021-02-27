extends Area2D

var i = 0
var j = 0
var spawner = self
var extents
var mobPos
var internalPos
var space_state

var rng = RandomNumberGenerator.new()
export var spawnNumber = 1
export var spawnTimer = 200
export var mobName = "res://scenes/Mobs/wizardMob.tscn"

func _ready():
	
	space_state = get_world_2d().direct_space_state
	
	
	rng.randomize()
	var spawnerShape = get_node("SpawnerShape")
	extents = spawnerShape.shape.get_extents()
	# print("Extents = ", extents) 
	pass
	
	
func check_overlap(internalPos):
	
	var list = $Mobs.get_children()
	var number = list.size()
	
	if(number == 0):
		# print("First Spawn")
		return true
	
	
	for i in range(0, number):
		#print(list[i].get_position())
		if(list[i].get_position() != internalPos):
			i = i + 1
		else:
			return false
			
	return true
	
	pass

func _process(delta):
	
	
	var childrenNumber = $Mobs.get_child_count()
	
	if(childrenNumber < spawnNumber):
		i+= 1
		
		
	if(i == spawnTimer):
		if(childrenNumber < spawnNumber):
			var mob = load(mobName).instance()
			var characterPos = get_node("/root/Node/Character").get_position()
			# mobPos = Vector2(0 + ((floor(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((floor(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
			var x_coord = floor(rng.randf_range(0, extents.x / 16)) * 32
			var y_coord = floor(rng.randf_range(0, extents.y / 16)) * 32
			
			internalPos = Vector2(x_coord, y_coord)
			mobPos = self.get_position() + Vector2(x_coord, y_coord)
			
			var collisions = space_state.intersect_point(mobPos + Vector2(16, 16))
			
#			if(!collisions.empty()):
#				print(collisions[0])
			
			if(collisions.empty()):
				mob.set_position(internalPos)
				$Mobs.add_child(mob)
				i = 0
			i-= 1
		
	pass

#func save(save_game : Resource):
	#save_game.data[SAVE_KEY] = 

