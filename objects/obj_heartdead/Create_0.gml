alarm[0] = 20 * 2
image_speed = 0
//if (FL_FightingAsriel == 0)
//{
//	if (FL_GetDunkedOn == 0)
//		gameoversong = caster_load("music/gameover.ogg")
//	if (FL_GetDunkedOn == 1)
//		gameoversong = caster_load("music/dogsong.ogg")
//}
msgnum = -1
dingus = 0
currentvol = 1
heartcon = 0
hearttimer = 0
with obj_overworld_controller {
	other.x = playerx
	other.y = playery
}
