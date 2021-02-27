extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var loadGame = 0

var gold = 0
var stone = 0
var infantryQuantity = 2
var bezerkerQuantity = 10
var defenderQuantity = 10
var basicSwordQuantity = 5
var longSwordQuantity = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func get_power():
	
	var tempTroopQuantity = infantryQuantity
	var troopDamage = []
	var weaponDamage = []
	var power = 0
	
	# Populate arrays
	for i in range (bezerkerQuantity):
		troopDamage.append(2)
	for i in range (infantryQuantity):
		troopDamage.append(1)
	for i in range (defenderQuantity):
		troopDamage.append(0.5)
	
	for i in range (longSwordQuantity):
		weaponDamage.append(WeaponsTroops.longSword)
	for i in range (basicSwordQuantity):
		weaponDamage.append(WeaponsTroops.basicSword)
		
	for i in range (min(troopDamage.size(), weaponDamage.size())):
		power += troopDamage[i] * weaponDamage[i]

	return power
	
	
	
#	if(tempTroopQuantity <= longSwordQuantity):
#		power = tempTroopQuantity * WeaponsTroops.longSword
#		print("Am I here?")
#	else:
#		if(tempTroopQuantity > longSwordQuantity):
#			power = longSwordQuantity * WeaponsTroops.longSword
#			tempTroopQuantity = tempTroopQuantity - longSwordQuantity
#
#		if(tempTroopQuantity > basicSwordQuantity):
#			power = power + (basicSwordQuantity * WeaponsTroops.basicSword)
#		elif(tempTroopQuantity <= basicSwordQuantity):
#			power = power + (tempTroopQuantity * WeaponsTroops.basicSword)
	
	pass
