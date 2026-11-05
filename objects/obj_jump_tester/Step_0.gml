if !point_in_rectangle(x,y,camx_ab-200,camy_ab-200,camx_ab+camw_ab,camy_ab+camh_ab) {
	outofroom = true
}
else {
	outofroom = false
}
if global.interacted && place_meeting(x,y,player) && !i_exists(obj_drawer){
	global.msg = []
	var index = 0
	global.msg[index] = "#t000^002#fnt001* (Use the transport pad?)^/^/ #C         Yes       No /E"
	for (var i = 0; i < len(global.msg);i++) {
		global.xx_offset[i] = 68
		global.yy_offset[i] = 960 /2 + 85
	}	
	instance_create(0,0,obj_drawer)
	global.choice = -1
}

if global.choice == 0 {
	global.choice = -1
	activated = true
	instance_create(0,0,obj_cutscener_test_transp)
	alarm[0] = 100
	xx = player.x
	yy = player.y
	ogxx = player.x
	ogyy = player.y
}
else {
	global.choice = -1
}