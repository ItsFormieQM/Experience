if place_meeting(x,y,obj_battle_border) {
	if point_distance(tx,ty,x,y) <= spdr {
		speed = 0 
		canmove = true
	}
}