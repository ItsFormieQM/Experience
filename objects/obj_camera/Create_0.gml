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
ran = false
lockin = false
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
	other.smoothness = 0
	ran = false
	lockin = false
	to_an_object = noone
	smoothness = undefined
	_x = 0
	_y = 0
}
shaking = false
pause_off = 0
shake_x = false
shake_y = false
shake_strength = 0
shake_timer = 0
shake_xcoord = function(strength,time,pauses) {
	xstart = x
	ystart = y
	shaking = true
	pause_off = pauses
	shake_strength = strength
	shake_timer = time
	shake_x = true
	alarm[2] = 1
}
shake_ycoord = function(strength,time,pauses) {
	xstart = x
	ystart = y
	shaking = true
	pause_off = pauses
	shake_strength = strength
	shake_timer = time
	shake_y = true
	alarm[2] = 1
}
ext_follow_cam = function(_x,_y,_smoothness) {
	other.smoothness = _smoothness
	other._x = _x
	other._y = _y
	other.following = true
	
}