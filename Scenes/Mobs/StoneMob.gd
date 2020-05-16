extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gold = 20
var stone = 5
var power = 5
var minSize = 2
var maxSize = 5
var mobSize
var totalPower

# Called when the node enters the scene tree for the first time.
func _ready():
	mobSize = get_node("Node2D").rng.randi_range(minSize, maxSize)
	totalPower = power * mobSize
	print(mobSize)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
