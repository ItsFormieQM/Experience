_x = 624
_y = 0
loaded = false
goto_x = 0
goto_y = 0
move_l = false
move_r = false
move_u = false
move_d = false
sp = 2.5
image_speed = 0
dir = 0
ran = false

noclip = false
alpha = 1
colour = 1
removed_variable_1 = false

jump_state = false
rot = 0
image_xscale = obj_mainchara.image_xscale
image_yscale = obj_mainchara.image_yscale
cutscene_walk = function(dir,_sp,frames) {
	other.sp = _sp
	
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
	moving = true
	alarm[1] = frames
} 
moving = false



