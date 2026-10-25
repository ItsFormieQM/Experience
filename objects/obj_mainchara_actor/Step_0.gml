if !global.flag[Flag.On_Battle] {
	
	
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
	
	if !moving {
		ran = false
		if floor(image_index) % 2 == 0 {
			image_index = 0
			image_speed = 0
		}
		
	}	
	else {
		if !ran {
			ran = true
			image_index = 1
		}
	}

	
}

if !global.cutscene {
	
	//obj_mainchara.x = x
	//obj_mainchara.y = y
	
	show_debug_message(global.actors)
}
