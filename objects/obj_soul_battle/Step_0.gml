if !global.flag[Flag.On_Battle] {
	i_destroy()
	exit
}
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
if retract {
	tx = obj_hero_kris.x
	ty = obj_hero_kris.y
	
	if spdr == undefined {
		spdr = point_distance(x,y,tx,ty) / 24
		
	}
	move_towards_point(tx,ty,spdr)
	if point_distance(x,y,tx,ty) <= spdr {
		speed = 0
		instance_destroy()
		instance_create(tx,ty,obj_heartburst,{},true)
		with obj_battlecontroller {
			advance_turn()
			advance = 0
		}
	}
}
