if global.cutscene {
	used = true
}
if cammoving {
	if move_l {
		x -= sp
		
	}
	if move_r {
		x += sp 
		
	}
	if move_u {
		y -= sp
		
	}
	if move_d {
		
		y += sp
		
	}
	
}

else {
}
if keyboard_check_pressed(ord("7")) {
	show_debug_message(scr_gettext("test_1"))
}
if !global.cutscene {
	if used {
		used = false
		following = false
		sp = 0
	}
}