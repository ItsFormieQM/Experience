if point_distance(x,y,tx,ty) <= speed {
	if down == none {
		down = choose(true,false)
	}
	if down {
		image_angle += 10
		image_angle = clamp(image_angle,0,270)
	}
	else {
	
		image_angle -= 10
		image_angle = clamp(image_angle,90,270)
	
	}
}
