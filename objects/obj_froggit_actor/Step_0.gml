if !global.flag[Flag.On_Battle] && !switched_sprite {
	if !jump_state {
		
	}
	
	if move_l {
		x -= sp
		
		dir = Left
		if !noclip {
			if place_meeting(x - 1,y,obj_wall) {
				x += sp
			}
		}
	}
	if move_r {
		x += sp
		
		dir = Right
		if !noclip {
			if place_meeting(x + 1,y,obj_wall) {
				x -= sp 
			}
		}
	}
	if move_u {
		y -= sp
	
		dir = Up
		if !noclip {
			if place_meeting(x,y - 1,obj_wall) {
				y += sp
			}
		}
	}
	if move_d {
		y += sp
		
		dir = Down
		if !noclip {
			if place_meeting(x,y + 1,obj_wall) {
				y -= sp	
			}
		}
	}
	
	if !moving && !jump_state {
		ran = false
			
	}	
	else if moving {
		if !ran {
			ran = true
			
		}
	}

	
}

if !global.cutscene {
	instance_destroy()
	//obj_mainchara.x = x
	//obj_mainchara.y = y

	show_debug_message(global.actors)
}
