var cam = view_camera[0]
xx = camera_get_view_x(cam)
yy = camera_get_view_y(cam)
mode = 0
alarm[0] = 0
mychoicex = (xx + 20 * 2)
mychoicey = (yy + 223 * 2) 
//if (room == room_area1_2 || room == room_tundra_paproom)
//{
//	mychoicex = (xx + 154)
//	mychoicey = (yy + 156)
//}
//if (room == room_water_undynefinal || room == room_water_undynefinal2 || room == room_water_undynefinal3 || room == room_fire1)
//{
//	mychoicex = (xx + 156)
//	mychoicey = (yy + 116)
//}
spdr = (distance_to_point(mychoicex, mychoicey) / (17)) / 2
move_towards_point(mychoicex, mychoicey, spdr)
snd_play(snd_battlefall)
//if (FL_TypeHeartTransition == HeartTransitionType.QuickBattle)
//{
//	x = xstart
//	y = ystart
//	mychoicex = (xx + 154)
//	mychoicey = (yy + 156)
//	spdr = (distance_to_point(mychoicex, mychoicey) / 8)
//	move_towards_point(mychoicex, mychoicey, spdr)
//	snd_play(snd_battlefall)
//}
