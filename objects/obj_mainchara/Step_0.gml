if !global.flag[Flag.On_Battle] {
	if !jump_state {
		image_speed = 0
	}
	if global.run {
		sp = 4
	}
	else {
		sp = 3
	}
	if global.canmove {
	
		if !removed_variable_1 {
			if global.interacted_f {
				global.run = !global.run
	
			}
			if global.a_held {
				x -= sp
				image_speed = floor(sp / 2) 
				dir = Left
				if !noclip
					if place_meeting(x - 1,y,obj_wall) {
			
						x += sp
						
			
					}
		
			}
			else if global.d_held {
				x += sp
				image_speed = floor(sp / 2) 
				dir = Right
				if !noclip
					if place_meeting(x + 1,y,obj_wall) {
						x -= sp
						
			
					}
		
			}
			if global.w_held {
				y -= sp
				image_speed = floor(sp / 2) 
				dir = Up
				if !noclip
					if place_meeting(x,y - 1,obj_wall) {
			
						y += sp
						
			
					}
		
			}
			else if global.s_held {
				y += sp
				image_speed = floor(sp / 2) 
				dir = Down
				if !noclip
					if place_meeting(x,y + 1,obj_wall) {
			
						y -= sp
						
			
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

	if !removed_variable_1 && !jump_state {
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
}
else if !instance_exists(obj_battle_controller){
	mov_append_tmr++
	if buffer {
		buffer = false
		mov_append_tmr = 0.01
	}
	var delay = 1
	if mov_append_tmr >= delay {
		array_push(movement_frames,{x_pos: x, y_pos: y, sprite: sprite_index, sprite_indice: image_index, alpha: 0.5})
		mov_append_tmr = 0
	}
}
if instance_exists(obj_battle_controller) && obj_battle_controller.begin_counter_attack && !heart_show_ran {
	heart_show = true
	heart_show_ran = true
	instance_create(x,y,obj_soul_battle,{},true)
	alarm[0] = 10
	
}
if global.cutscene {
	visible = false
	
	if !instance_exists(obj_mainchara_actor) {
		actor = instance_create(x,y,obj_mainchara_actor)
		for (var i = 0; i < array_length(global.actors); i++) {
			if global.actors[i] == noone {
				global.actors[i] = actor
				break
			}
		}
	}
	x = global.actors[0].x
	y = global.actors[0].y
}