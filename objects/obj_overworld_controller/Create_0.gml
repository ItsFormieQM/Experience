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
die = function() {
	var cam = view_camera[0]
	var camx = camera_get_view_x(cam)
	var camy = camera_get_view_y(cam)
	audio_stop_all()
	snd_play(snd_damage,1.2)
	playerx = obj_mainchara.x - camx
	playery = obj_mainchara.y - camy
	pause(80)
	room_goto(room_gameover)
}