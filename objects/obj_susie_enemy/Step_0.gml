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
if conv == 1 {
	if stats.hp != stats.maxhp {
		scr_enemytalk(bbox_left,y,
			["So that's it?","You're just gonna kill me?","...","Heh^020, Kris..."],
			snd_txtsus,
			[1.4,2.45,0.55,1.35]
		)
	}	
	conv += 0.1
}	