if !global.flag[Flag.On_Battle] {
	if !jump_state {
		image_speed = 0
	}
	
	if move_l {
		x -= sp
		image_speed = sp / 2
		dir = Left
		if !noclip {
			if place_meeting(x - 1,y,obj_wall) {
				x += sp
			}
		}
	}
	if move_r {
		x += sp
		image_speed = sp / 2
		dir = Right
		if !noclip {
			if place_meeting(x + 1,y,obj_wall) {
				x -= sp
			}
		}
	}
	if move_u {
		y -= sp
		image_speed = sp / 2
		dir = Up
		if !noclip {
			if place_meeting(x,y - 1,obj_wall) {
				y += sp
			}
		}
	}
	if move_d {
		y += sp
		image_speed = sp / 2
		dir = Down
		if !noclip {
			if place_meeting(x,y + 1,obj_wall) {
				y -= sp	
			}
		}
	}
	
	if !moving && !jump_state {
		ran = false
		image_index = 0		
	}	
	else if moving {
		if !ran {
			ran = true
			image_index = 1
		}
	}

	if !switched_sprite && !jump_state {
		switch dir {
			case Up:
				sprite_index = upspr
				break
			case Down:
				sprite_index = downspr
				break
			case Left:
				sprite_index = leftspr
				break
			case Right:
				sprite_index = rightspr
				break
			default:
				break
		}
	}
}

if !global.cutscene {
	instance_destroy()
	obj_mainchara.visible = true
	//obj_mainchara.x = x
	//obj_mainchara.y = y
	for (var i = 0; i < array_length(global.actors); i++) {
		if global.actors[i].actor == id {
			global.actors[i] = noone
			break
		}
	}
	show_debug_message(global.actors)
}
