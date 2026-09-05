if !global.on_battle {
	if keyboard_check_pressed(ord("I")) {
		is_gunman = !is_gunman
	}
	if !jump_state {
		image_speed = 0
	}
	if global.run {
		sp = 4
	}
	else {
		sp = 2
	}
	if global.canmove {
	
		if !is_gunman {
			if global.interacted_f {
				global.run = !global.run
	
			}
			if global.a_held {
				x -= sp
				image_speed = sp / 2
				dir = Left
				if place_meeting(x - 1,y,obj_wall) {
			
					x += sp
				
			
				}
		
			}
			else if global.d_held {
				x += sp
				image_speed = sp / 2
				dir = Right
				if place_meeting(x + 1,y,obj_wall) {
					x -= sp
				
			
				}
		
			}
			if global.w_held {
				y -= sp
				image_speed = sp / 2
				dir = Up
				if place_meeting(x,y - 1,obj_wall) {
			
					y += sp
				
			
				}
		
			}
			else if global.s_held {
				y += sp
				image_speed = sp / 2
				dir = Down
				if place_meeting(x,y + 1,obj_wall) {
			
					y -= sp
				
			
				}
		
			}
		}
		else {
			if global.interacted_f {
				global.run = !global.run
	
			}
			if global.a_held {
				x -= sp
				image_speed = sp / 2
				dir = Left
				if place_meeting(x - 1,y,obj_wall) {
			
					x += sp
					image_speed = 0
			
				}
		
			}
			else if global.d_held {
				x += sp
				image_speed = sp / 2
				dir = Right
				if place_meeting(x + 1,y,obj_wall) {
					x -= sp
					image_speed = 0
			
				}
		
			}
			if global.w_held {
				y -= sp
				image_speed = sp / 2
			
				if place_meeting(x,y - 1,obj_wall) {
			
					y += sp
					image_speed = 0
			
				}
		
			}
			else if global.s_held {
				y += sp
				image_speed = sp / 2
				if place_meeting(x,y + 1,obj_wall) {
			
					y -= sp
					image_speed = 0
			
				}
		
			}
		}
	}
	if !global.w_held && !global.a_held && !global.s_held && !global.d_held && !jump_state {
		ran = false
		image_index = 0		
	}	
	else if global.canmove {
		if !ran {
			ran = true
			image_index = 1
		}
	}

	if !is_gunman && !jump_state {
		switch dir {
			case Up:
				sprite_index = spr_mainchara_u
				break
			case Down:
				sprite_index = spr_mainchara_d
				break
			case Left:
				sprite_index = spr_mainchara_l
				break
			case Right:
				sprite_index = spr_mainchara_r
				break
			default:
				break
		}
	}
	else if is_gunman && !jump_state {
		if global.interacted_x && ammo > 0 {
			snd_play(snd_gunshot,1.2,0.9)
			ammo--
		}
		switch dir {
			case Left:
				sprite_index = spr_kris_gun_l
				break
			case Right:
				sprite_index = spr_kris_gun_r
				break
			default:
				sprite_index = spr_kris_gun_r
				break
		}
	}
}

