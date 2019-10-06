# StartNebu.gd
extends Control

# Load the custom images for the mouse cursor
var point = load("res://images/Cursors/32/iconfinder_katana_blood.png")
var normal = load("res://images/Cursors/32/iconfinder_katana_479474.png")

func _ready():
    # Changes only the arrow shape of the cursor
    # This is similar to changing it in the project settings
    Input.set_custom_mouse_cursor(normal,0)

    # Changes a specific shape of the cursor (here the IBeam shape)
    Input.set_custom_mouse_cursor(point,2)

func _on_Start_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/UI.tscn")


func _on_Quit_game_pressed():
	get_tree().quit()



