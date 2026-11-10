image_alpha = 0
ran = false
waitfordonity = false
ran1 = false
if global.flag[Flag.Story_FightingSusie_1] == false {
	instance_create(0,0,obj_gameover_susieevent)
	instance_destroy()
}