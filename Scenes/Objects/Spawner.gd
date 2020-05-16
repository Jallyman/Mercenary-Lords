extends Area2D

var i = 0
var j = 0
var spawner = self
var extents
var mobPos
var internalPos

var rng = RandomNumberGenerator.new()
export var spawnNumber = 2
export var mobName = "res://scenes/Mobs/ZombieMob.tscn"

func _ready():
	
	rng.randomize()
	var spawnerShape = get_node("SpawnerShape")
	extents = spawnerShape.shape.get_extents()
	
	pass
	
	
func check_overlap(internalPos):
	
	var list = $Mobs.get_children()
	var number = list.size()
	
	if(number == 0):
		print("First Spawn")
		return true
	
	
	for i in range(0, number):
		print(list[i].get_position())
		if(list[i].get_position() != internalPos):
			i = i + 1
		else:
			return false
			
	return true
	
	pass


func _process(delta):
	
	var childrenNumber = $Mobs.get_child_count()
	#print(childrenNumber)
	
	if(childrenNumber < spawnNumber):
		i+= 1
		
#	if(self.has_node("Mob2") == false):
#		j+= 1s
		
	if(i == 200):
		if(childrenNumber < spawnNumber):
			var mob = load(mobName).instance()
			var characterPos = get_node("/root/Node/Character").get_position()
			# mobPos = Vector2(0 + ((floor(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((floor(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
			var x_coord = round(rng.randf_range(0, extents.x / 32)) * 32
			var y_coord = round(rng.randf_range(0, extents.y / 32)) * 32
			
			internalPos = Vector2(x_coord, y_coord)
			mobPos = self.get_position() + Vector2(x_coord, y_coord)
			
			if(mobPos != characterPos && check_overlap(internalPos)):
				mob.set_position(internalPos)
				$Mobs.add_child(mob)
				i = 0
			i-= 1
		
	pass

