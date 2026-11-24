var data = video_draw()
var info = data[0]
if info == 0 && video_get_status() == video_status_playing {
	var vidsurf = data[1]
	draw_surface(vidsurf,xpos,ypos)
}