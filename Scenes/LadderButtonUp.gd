extends TextureButton


func _on_Ladder_button_up_pressed():
	# get_tree().change_scene("res://scenes/underground2.tscn")
	var UI = get_node("/root/Node")
	var tileMap = get_node("/root/Node/TileMap")
	var character = get_node("/root/Node/Character")
	var ladder = get_node("/root/Node/TileMap/Ladder_Up")
	var ladPos = ladder.get_position()
	var charPos = character.get_position()
	var nextMap = load("res://scenes/mainMap.tscn").instance()
	
	if((ladPos.x - charPos.x) < 160 && (ladPos.x - charPos.x > -160)):
		if((ladPos.y - charPos.y) < 160 && (ladPos.y - charPos.y > -160)):
			print(charPos.y)
			ladPos.y = ladPos.y + 32
			
			character.set_position(ladPos)
			UI.remove_child(tileMap)
			UI.add_child(nextMap)
			UI.move_child(nextMap,0)
			tileMap.queue_free()

func _ready():
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
