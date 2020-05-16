extends Label


# Declare member variables here. Examples:
# var a = 2
# vavr b = "text"
var mob = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	
	if not is_instance_valid(mob):
		mob = null
	
	if(mob != null):
		self.text = "Mob size: " + str(mob.mobSize)
		
	pass
