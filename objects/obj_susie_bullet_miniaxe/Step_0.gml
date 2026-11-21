
anglerot += irandom_range(1,20)
if anglerot > 360 {
	anglerot = 0
}

image_angle = anglerot

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
if place_meeting(x,y,obj_soul_battle) {
	with obj_hero_kris {
		damage(5)
	}
	instance_destroy()
}