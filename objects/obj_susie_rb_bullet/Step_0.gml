if point_distance(x,y,tx,ty) <= speed {
	if down == none {
		down = choose(true,false)
	}
	
}
if is_bool(down) {
	if down {
		image_angle += random_range(1,5)
		image_angle = clamp(image_angle,0,270)
		direction = image_angle
	}
	else {
	
		image_angle -= random_range(1,6)
		image_angle = clamp(image_angle,90,270)
		direction = image_angle
	}
}
if place_meeting(x,y,obj_soul_battle) {
	with obj_hero_kris {
		damage(5)
	}
	instance_destroy()
}