if visible {
	
	
	global.canmove = false
	if !file_saved {
		if global.d_press {
			i++
			check_values()
		}
		else if global.a_press {
			i-- 
			check_values()
		}
	}
	if global.interacted {
		if file_saved {
			visible = false
			global.canmove = true
			global.interacted = false
			exit
		}
		if i == 0 {
			file_saved = true
			colour = c_yellow
			scr_save(savepoint_id)
			ran = false
			snd_play(snd_saved,1.35)
		}
		else if i == 1 {
			visible = false
			global.canmove = true
			global.interacted = false
			
		}
		
	}
	
}
else {
	file_saved = false
	colour = c_white
	ran = false
}