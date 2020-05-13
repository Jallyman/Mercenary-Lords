extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var mob = null

func _on_Attack_button_pressed():
	
	var characterGold = get_node("/root/PlayerData").gold
	var characterStone = get_node("/root/PlayerData").stone
	
	if(mob.visible):
		
		characterGold = characterGold + mob.gold
		characterStone = characterStone + mob.stone
		get_node("/root/PlayerData").gold = characterGold
		get_node("/root/PlayerData").stone = characterStone
		
		
		mob.hide()
		mob.queue_free()
		self.hide()
		
		
		print("gold: ", characterGold)
		print("Stone: ", characterStone)

		
		#get_node("AttackButton").queue_free()
		
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
