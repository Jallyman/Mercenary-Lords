extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var mob = null


func _on_Attack_button_pressed():
	
	var characterGold = get_node("/root/PlayerData").gold
	var mobGold = get_node("/root/Node/TileMap/Spawner/Mob").gold
	
	
	if(mob.visible):
		
		characterGold = characterGold + mobGold
		mob.hide()
		mob.queue_free()
		self.hide()
		get_node("/root/PlayerData").gold = characterGold
		
		print(characterGold)
		#get_node("AttackButton").queue_free()
		
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
