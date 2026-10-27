dream_init = false
dream_meter_maxnormal = choose(60,70)
dream_meter_maxdating = 95
dream_meter_maxaggressive = 12
global.prev_room = noone
ran = false
handle = noone
playerx = 320
playery = 240
subchoice = -1
refused_state_markerinst = noone
ran_sleep1 = false
deletelazy = false
die = function() {
	var cam = view_camera[0]
	var camx = camera_get_view_x(cam)
	var camy = camera_get_view_y(cam)
	audio_stop_all()
	snd_play(snd_damage,1.2)
	
	var dc = global.flag[Flag.Story_DeathCount]
	global.flag[Flag.Story_DeathCount]++
	if room != room_battle {
		playerx = obj_mainchara.x - camx
		playery = obj_mainchara.y - camy
	}
	else {
		playerx = obj_heart.x - camx
		playery = obj_heart.y - camy
	}
	var delay = 100
	if global.flag[Flag.Story_RefusedSOUL] >= 1 {
		delay = clamp(delay,10,irandom_range(45,80) - clamp(dc,0,20))
		room_persistent = true
		refused_state_markerinst = instance_create(obj_mainchara.x,obj_mainchara.y,obj_warp_marker,{slot: -666})
	}
	
	pause(delay)
	
	room_goto(room_gameover)
}
enum Inventory_State {
	off,
	active_firstchoice,
	active_secondchoice
}
depth = layer_get_depth("TECHNICAL")
