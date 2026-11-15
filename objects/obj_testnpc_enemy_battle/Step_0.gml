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
	sdm(conv)
	scr_enemytalk((bbox_left-sprite_width)+sprite_width/2,y,["..","Tung^/Tung^/Tung^/Sahur"],snd_txt1,[0.5,1.2])
	conv += 0.1
}
else if floor(conv) == conv {
	//scr_enemytalk((bbox_left-sprite_width)+sprite_width/2,y,["..","Tung^/Tung^/Tung^/Sahur"],snd_txt1,[0.5,1.2])
	scr_enemytalk_fskip()
	conv += 0.1
}