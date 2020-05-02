extends Label


func _process(delta):
	
	var lab = get_node("/root/Node/Character").get_position()
	var x = (lab.x )/32
	var y = (lab.y )/32*-1
	
	if( y == -0):
		y = y * -1
	
	self.text = "x : " + String(x) + "  y : " + String(y)
	
	pass
	
