move_l = false
move_r = false
move_u = false
move_d = false
cammoving = false
sp = 0
move_cam = function(dir,_sp,frames) {
	sp = _sp
	switch dir {
		case Up:
			move_u = true
			break
		case Down:
			move_d = true
			break
		case Left:
			move_l = true
			break
		case Right:
			move_r = true
			break
		default:
			return -1
	}
	alarm[0] = frames
	cammoving = true
	show_debug_message("yo its supposed to move but i guess not")
}