extends Area2D

var i = 0
var j = 0
var spawner = self
var extents
var mobPos
var mobPos2

func _ready():

	var spawnerShape = get_node("/root/Node/TileMap/Spawner/SpawnerShape")
	var spawnerPos = spawner.get_position()
	extents = spawnerShape.shape.get_extents()
	
	pass

func _process(delta):
	
	if(self.has_node("Mob") == false):
		i+= 1
		
	if(self.has_node("Mob2") == false):
		j+= 1
		
	if(i == 200):
		if(self.has_node("Mob") == false):
			var mob = load("res://scenes/Mob.tscn").instance()
			mobPos = Vector2(0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
			print(0 + (rand_range(((extents.x*-1)/32),((extents.x)/32)))*32)
			
			if(mobPos2 != mobPos):
				print("made it 1")
				mob.set_name("Mob")
				mob.set_position(mobPos)
				spawner.add_child(mob)
				i = 0
			i-= 1
		
	if(j == 600):
		if(self.has_node("Mob2") == false):
			var mob2 = load("res://scenes/Mob.tscn").instance()
			mobPos2 = Vector2(0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))

			
			if(mobPos != mobPos2):
				print("made it 2")
				mob2.set_name("Mob2")
				mob2.set_position(mobPos2)
				spawner.add_child(mob2)
				j = 0
			j-= 1
			
	pass




#if(self.has_node("Mob") == true):
#				var mob = load("res://scenes/Mob.tscn").instance()
#				var mob2 = load("res://scenes/Mob.tscn").instance()
#				var spawner = self
#				var spawnerShape = get_node("/root/Node/TileMap/Spawner/SpawnerShape")
#				var spawnerPos = spawner.get_position()
#				var extents = spawnerShape.shape.get_extents()
#				var xPos = spawnerPos.x + extents.x*2
#				var yPos = spawnerPos.y + extents.y*2
#				var mobPos1 = Vector2(0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
#				var mobPos2 = Vector2(0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
#				#print(xPos)
#				#print(yPos)
#				# var mobPos = Vector2(randi() % (spawnerPos.x + extents.x*2), randi() % (spawnerPos.y + extents.y*2))
#
#				# print(extents)
#				print(spawnerPos)
#				mob.set_name("Mob")
#				mob2.set_name("Mob2")
#				mob.set_position(mobPos1)
#				mob2.set_position(mobPos2)
#				spawner.add_child(mob)
#				spawner.add_child(mob2)
#				i = 0