if !stop {
	mychoicex = 40 + camx_ab
	mychoicey = 446 + camy_ab


	move_towards_point(mychoicex, mychoicey, spdr)
	
	
}
if point_distance(x,y,mychoicex,mychoicey) <= spdr {
	stop = true
	speed = 0
	x = mychoicex
	y = mychoicey
}