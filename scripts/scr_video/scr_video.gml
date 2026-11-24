function scr_load_video(pth){
	return video_open(pth)
}
function scr_start_video(vidpath,_xpos,_ypos) {
	var handle = instance_create(0,0,obj_video_handler,{xpos: _xpos, ypos: _ypos, pth: vidpath})
	return handle
}