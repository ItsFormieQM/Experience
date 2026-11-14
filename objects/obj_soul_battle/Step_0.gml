if soulmode == SoulMode.Red {
	if canmove {
		if global.w_held {
			y -= sp
			if place_meeting(x,y-1,obj_soul_wall) {
				y += sp
			}
		} 
		else if global.s_held {
			y += sp
			if place_meeting(x,y+1,obj_soul_wall) {
				y -= sp
			}
		}
		if global.a_held {
			x -= sp
			if place_meeting(x - 1,y,obj_soul_wall) {
				x += sp
			}
		}
		else if global.d_held {
			x += sp
			if place_meeting(x + 1,y,obj_soul_wall) {
				x -= sp
			}
		}
		
		
	}
}
if image_alpha < 1 {
	image_alpha += 0.075
}
