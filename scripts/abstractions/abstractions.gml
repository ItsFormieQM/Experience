#region Camera
function _camx(){
	var cam = view_camera[0]
	var result = camera_get_view_x(cam)
	return result
}
function _camy(){
	var cam = view_camera[0]
	var result = camera_get_view_y(cam)
	return result
}
function _camw(){
	var cam = view_camera[0]
	var result = camera_get_view_width(cam)
	return result
}
function _camh(){
	var cam = view_camera[0]
	var result = camera_get_view_height(cam)
	return result
}
#macro camx_ab _camx()
#macro camy_ab _camy()
#macro camw_ab _camw()
#macro camh_ab _camh()
#endregion 
#region Draw settings
///@desc Returns the draw settings in the current frame.
function draw_get_settings() {
	var oldcol = draw_get_colour()
	var oldfnt = draw_get_font()
	var oldh = draw_get_halign()
	var oldv = draw_get_valign()
	return [oldcol,oldfnt,oldh,oldv]
}
#endregion