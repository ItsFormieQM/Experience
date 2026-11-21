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
mask_index = spr_susie_rudebuster_full
if place_meeting(x,y,obj_soultensioner) {
	with obj_soultensioner {
		image_alpha = 1
		if i_exists(obj_soul_battle) {
			with obj_soultensioner {
				add_tpgr(1.5)
			}
		}

	}
}
mask_index = sprite_index
if place_meeting(x,y,obj_soul_battle) {
	with obj_hero_kris {
		damage(5)
	}
	instance_destroy()
}