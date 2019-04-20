extends Label


func _process(delta):
	
	var lab = get_parent().get_parent().get_parent().get_parent().get_position()
	var x = (lab.x - 16)/32
	var y = (lab.y - 16)/32*-1
	
	if( y == -0):
		y = y * -1
	
	self.text = "x : " + String(x) + "  y : " + String(y)
	
	pass
	