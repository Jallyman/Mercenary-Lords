extends TextureButton

var game_saver : Node = null
func _on_Menu_Button_pressed():

	if(get_node("Menu").visible):
		get_node("Menu").hide()
		
	else:
		get_node("Menu").show()

