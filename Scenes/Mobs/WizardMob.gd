extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gold = 100
var stone = 0
var power = 100
var minSize = 1
var maxSize = 1
var mobSize
var totalPower


func _ready():
	mobSize = get_node("Node2D").rng.randi_range(minSize, maxSize)
	totalPower = power * mobSize
	# print(totalPower)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
