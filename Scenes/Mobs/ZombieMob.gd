extends Sprite

var gold = 5
var stone = 0
var power = 1
var minSize = 10
var maxSize = 25
var mobSize
var totalPower
var totalGold
var totalStone


func _ready():
	mobSize = get_node("Node2D").rng.randi_range(minSize, maxSize)
	totalPower = power * mobSize
	totalGold = gold * mobSize
	totalStone = stone * mobSize
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
