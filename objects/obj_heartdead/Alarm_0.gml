
if global.flag[Flag.Story_RefusedSOUL] == 0 {
	alarm[1] = 40 * 2
}
else if global.flag[Flag.Story_RefusedSOUL] == 1 {
	alarm[3] = 20
}
snd_play(snd_break)
sprite_index = spr_heartbreak

//if (FL_FightingAsriel == 1)
//{
//	alarm[1] = -1
//	heartcon = 5
//	thisx = x
//	thisy = y
//}
