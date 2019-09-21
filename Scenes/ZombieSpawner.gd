extends Area2D

# class member variables go here, for example:
var i = 0

func _ready():
	#var Mob = load("res://scenes/Mob.tscn").instance()
	
	#Mob.set_name("ZombieMob")
	#Mob.set_position(Vector2(64,64))
		pass

func _process(delta):

	if(self.has_node("Mob") == false):
		
		i+= 1
		if(i == 200):
			var mob = load("res://scenes/Mob.tscn").instance()
			var mob2 = load("res://scenes/Mob.tscn").instance()
			var spawner = self
			var spawnerShape = get_node("/root/Node/TileMap/Spawner/SpawnerShape")
			var spawnerPos = spawner.get_position()
			var extents = spawnerShape.shape.get_extents()
			var xPos = spawnerPos.x + extents.x*2
			var yPos = spawnerPos.y + extents.y*2
			var mobPos1 = Vector2(0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
			var mobPos2 = Vector2(0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)),0 + ((round(rand_range((extents.x*-1)/32,(extents.x)/32))*32)))
			#print(xPos)
			#print(yPos)
			# var mobPos = Vector2(randi() % (spawnerPos.x + extents.x*2), randi() % (spawnerPos.y + extents.y*2))
			
			# print(extents)
			print(spawnerPos)
			mob.set_name("Mob")
			mob2.set_name("Mob2")
			mob.set_position(mobPos1)
			mob2.set_position(mobPos2)
			spawner.add_child(mob)
			spawner.add_child(mob2)
			i = 0
	pass
