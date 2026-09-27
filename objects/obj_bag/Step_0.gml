if position_meeting(mouse_x,mouse_y,self) && (!obj_mainchara.jump_state && !instance_exists(obj_drawer) && !instance_exists(obj_fade_warp)){
	hovered = true
	if global.l_click {
		opened = !opened
		snd_play(snd_land)
	}
}

if opened {
	with obj_inventory {
		visible = true
	}
	if !ran {
		scr_toggle_movement_player()
		obj_mainchara.occupied = true
		ran = true
	}
	
}
else {
	with obj_inventory {
		visible = false
	}
	if ran {	
		if !obj_mainchara.jump_state {
			scr_toggle_movement_player()
			
		}
		obj_mainchara.occupied = false
		ran = false
	}
}	