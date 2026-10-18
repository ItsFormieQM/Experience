
if !global.flag[Flag.On_Battle] {
	
	if global.flag[Flag.Player_Running] {
		sp = 4
	}
	else {
		sp = 3 
	}
	if global.canmove {
	
		if !global.cutscene {
			if global.interacted_f {
				global.flag[Flag.Player_Running] = !global.flag[Flag.Player_Running]
	
			}
			if global.a_held {
				
				x -= sp / global.deltatime
				image_speed = floor(sp / (global.deltatime * 2)) 
				dir = Left
				previnp = dir
				if !noclip
					if place_meeting(x - 1,y,obj_wall) {
			
						x += sp / global.deltatime
						previnp = noone
						global.a_held = false
					}
		
			}
			
			else if global.d_held {
				x += sp / global.deltatime
				image_speed = floor(sp / (global.deltatime * 2)) 
				dir = Right
				previnp = dir
				if !noclip
					if place_meeting(x + 1,y,obj_wall) {
						x -= sp / global.deltatime
						previnp = noone
						global.d_held = false
					}
		
			}
			if global.w_held {
				y -= sp / global.deltatime
				image_speed = floor(sp / (global.deltatime * 2)) 
				dir = Up
				previnp = dir
				if !noclip
					if place_meeting(x,y - 1,obj_wall) {
			
						y += sp / global.deltatime
						previnp = noone
						global.w_held = false
					}
		
			}
			else if global.s_held {
				y += sp / global.deltatime 
				image_speed = floor(sp / (global.deltatime * 2)) 
				dir = Down
				previnp = dir
				
				if !noclip
					if place_meeting(x,y + 1,obj_wall) {
			
						y -= sp / global.deltatime
						previnp = noone
						global.s_held = false
					}
		
			}
			
		}
	}
	if !global.canmove || (!global.w_held && !global.a_held && !global.s_held && !global.d_held && !jump_state) {
		ran = false
		image_index = 0
		image_speed = 0
		previnp = noone
	}	
	else if global.canmove {
		if !ran {
			ran = true
			image_index = 1
		}
	}
	
	if !removed_variable_1 && !jump_state {
		if dir == Down {
			sprite_index = spr_mainchara_d
		}
		if dir == Right {
			sprite_index = spr_mainchara_r
		}
		if dir == Up {
			sprite_index = spr_mainchara_u
		}
		if dir == Left {
			sprite_index = spr_mainchara_l
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
	if mov_append_tmr / global.deltatime >= delay {
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

enum Actors {
	Kris,
	Frisk,
	Pink,
	Susie,
	Noelle,
}