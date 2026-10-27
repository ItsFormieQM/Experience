var cam = view_camera[0]
xx = camera_get_view_x(cam)
yy = camera_get_view_y(cam)
mode = 0
mychoicex = 40 + xx
mychoicey = 446 + yy
stop = false
spdr = (distance_to_point(mychoicex, mychoicey) / (17)) / 2
move_towards_point(mychoicex, mychoicey, spdr)
room_persistent = true
snd_play(snd_battlefall)

