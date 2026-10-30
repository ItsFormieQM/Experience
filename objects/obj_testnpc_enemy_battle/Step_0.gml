if battleintro {
	if point_distance(x,y,xpos,ypos) <= spdr {
		battleintro = false
		speed = 0
		x = xpos
		y = ypos
		xstart = xpos
		ystart = ypos
	}
}