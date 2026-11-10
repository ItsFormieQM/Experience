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
if con == 1 {
	exit
	scr_enemytalk(x,y,dialogue[con-1].txt,dialogue[con-1].snd)
	con+=0.1
	
}