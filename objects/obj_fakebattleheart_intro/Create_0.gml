var cam = view_camera[0]
xx = camera_get_view_x(cam)
yy = camera_get_view_y(cam)
mode = 0
var cam = view_camera[0]
xx = camera_get_view_x(cam)
yy = camera_get_view_y(cam)
mode = 0
mychoicex = 40 + xx
mychoicey = 446 + yy
//if (room == room_area1_2 || room == room_tundra_paproom)
//{
//	mychoicex = (xx + 154)
//	mychoicey = (yy + 156)
//}
//if (room == room_water_undynefinal)
//{
//	mychoicex = (xx + 154)
//	mychoicey = (yy + 110)
//}
spdr = (distance_to_point(mychoicex, mychoicey) / (17)) / 2
move_towards_point(mychoicex, mychoicey, spdr)

//if (FL_TypeHeartTransition == HeartTransitionType.QuickBattle)
//{
//	mychoicex = (xx + 154)
//	mychoicey = (yy + 156)
//	spdr = (distance_to_point(mychoicex, mychoicey) / 8)
//	move_towards_point(mychoicex, mychoicey, spdr)
//}
//mychoicex = (xx + (20 * 2))
//mychoicey = (yy + (223 * 2))
//spdr = round((distance_to_point(mychoicex, mychoicey) / (17)) / 2) 
//move_towards_point(mychoicex, mychoicey, spdr)
snd_play(snd_battlefall)

