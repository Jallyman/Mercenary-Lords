extends TextureButton




func _on_Ladder_button_pressed():
	# get_tree().change_scene("res://scenes/underground2.tscn")
	var UI = get_node("/root/Node")
	var tileMap = get_node("/root/Node/TileMap")
	var character = get_node("/root/Node/Character")
	var ladder = get_node("/root/Node/TileMap/Ladder")
	var ladPos = ladder.get_position()
	var charPos = character.get_position()
	var nextMap
	
	if((ladPos.x - charPos.x) < 160 && (ladPos.x - charPos.x > -160)):
		if((ladPos.y - charPos.y) < 160 && (ladPos.y - charPos.y > -160)):
			
			nextMap = Maps.underground
			
			ladPos.y = ladPos.y + 32
			character.set_position(ladPos)
			
			UI.remove_child(tileMap)
			UI.add_child(nextMap)
			UI.move_child(nextMap,0)


func _ready():
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND

# func _mouse_entered():
	


# func _mouse_exited():
	
