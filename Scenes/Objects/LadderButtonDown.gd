extends TextureButton


var nextMap

func _on_Ladder_button_pressed():
	# get_tree().change_scene("res://scenes/underground2.tscn")
	var UI = get_node("/root/Node")
	var tileMap = get_node("/root/Node/TileMap")
	var character = get_node("/root/Node/Character")
	var ladder = get_node("/root/Node/TileMap/Ladder")
	var ladPos = ladder.get_position()
	var charPos = character.get_position()
	
	
	if((ladPos.x - charPos.x) < 160 && (ladPos.x - charPos.x > -160)):
		if((ladPos.y - charPos.y) < 160 && (ladPos.y - charPos.y > -160)):
			
			nextMap = Maps.underground
			print(ladPos)
			ladPos.y = ladPos.y + 32
			
			character.set_position(ladPos)
			#UI.hide(tileMap)
			UI.remove_child(tileMap)
			UI.add_child(nextMap)
			UI.move_child(nextMap,0)
			Maps.mainMap = tileMap
			
			#tileMap.queue_free()
			print(character.position)


func _ready():
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	Maps.underground = load("res://Scenes/Maps/Underground2.tscn").instance()

# func _mouse_entered():
	


# func _mouse_exited():
	
