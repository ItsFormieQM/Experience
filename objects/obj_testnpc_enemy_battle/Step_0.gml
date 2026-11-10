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
	sdm(con)
	scr_enemytalk((bbox_left-sprite_width)+sprite_width/2,y,["Ribbit.","Tung^/Tung^/Tung^/Sahur"],snd_txt2)
	con += 0.1
}