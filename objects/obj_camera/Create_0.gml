move_l = false
move_r = false
move_u = false
move_d = false
cammoving = false
following = true
sp = 0
ogx = x
ogy = y
time = 0
_x = 0
_y = 0
_sp = 0
used = false
to_an_object = noone
smoothness = 0
move_cam = function(dir,_sp,frames) {
	switch dir {
		case Left:
			other.move_l = true
			break
		case Right:
			other.move_r = true
			break
		case Up:
			other.move_u = true
			break
		case Down:
			other.move_d = true
			break
	}
	other.sp = _sp
	other.alarm[0] = frames
	other.cammoving = true
}
follow_cam = function(to_an_object,_smoothness) {
	other.smoothness = _smoothness
	other.to_an_object = to_an_object
	other.following = true
	
}
unfollow_cam = function() {
	other.following = false
	_sp = 0
}