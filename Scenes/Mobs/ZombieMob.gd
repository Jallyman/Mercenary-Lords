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

func save():
	var save_dict = {
		"filename" : get_filename(),
		"parent" : get_parent().get_path(),
		"pos_x" : position.x, # Vector2 is not supported by JSON
		"pos_y" : position.y,
	}
	return save_dict

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
