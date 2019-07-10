extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _on_Menu_Button_pressed():

	if(get_node("Menu").visible):
		get_node("Menu").hide()
		
	else:
		get_node("Menu").show()
	

func _ready():
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND