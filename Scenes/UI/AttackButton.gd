extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var mob = null

func _on_Attack_button_pressed():
	
	var characterStats = get_node("/root/PlayerData")
	var characterGold = characterStats.gold
	var characterStone = characterStats.stone
	var characterPower = characterStats.get_power()
	print(characterPower)
	
	if(characterPower >= mob.totalPower):
		characterGold = characterGold + mob.totalGold
		characterStone = characterStone + mob.totalStone
		PlayerData.gold = characterGold
		PlayerData.stone = characterStone
		#get_node("/root/")
		
		mob.hide()
		get_parent().get_node("MobStats").hide()
		mob.queue_free()
		self.hide()
		
		print("gold: ", characterGold)
		print("Stone: ", characterStone)
		
	else:
		print("Too weak")
		get_parent().get_node("MobStats").hide()
		self.hide()
		
		#get_node("AttackButton").queue_free()
		
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
