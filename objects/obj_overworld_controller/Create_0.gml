dream_init = false
dream_meter_maxnormal = choose(60,70)
dream_meter_maxdating = 95
dream_meter_maxaggressive = 12
global.prev_room = noone
ran = false
handle = noone
playerx = 320
playery = 240
die = function() {
	audio_stop_all()
	snd_play(snd_damage,1.2)
	pause(80)
	room_goto(room_gameover)
}