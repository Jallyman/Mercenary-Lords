extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _on_Mob_button_pressed():
		# get_tree().change_scene("res://scenes/underground2.tscn")
	var UI = get_node("/root/Node")
	var tileMap = get_node("/root/Node/TileMap")
	var character = get_node("/root/Node/Character")
	var mob = get_parent().get_parent().get_parent()
	var mobPos = mob.get_position()
	var charPos = character.get_position()
	var attackButton = get_node("/root/Node/Character/Camera2D/MenuButton/Menu/AttackButton")
	var attackPos = attackButton.get_position()
	
	print(mob)
	attackButton.mob = mob
	attackButton.show()
	
func _ready():
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
