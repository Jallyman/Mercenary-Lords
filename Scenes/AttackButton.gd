extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var mob = null

func _on_Attack_button_pressed():
	
	if(mob.visible):
		mob.hide()
		mob.queue_free()
		self.hide()
		#get_node("AttackButton").queue_free()
		
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
