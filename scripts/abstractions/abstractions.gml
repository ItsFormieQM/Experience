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
#region instances
function exists(obj) {
	if asset_get_index(obj) == -1 {
		return false
	}
	return instance_exists(obj)
}
#endregion
#region Draw settings
///@desc Returns the draw settings in the current frame. Returns an array with order from 0 - 3. oldcol,oldfnt,oldh,oldv
function draw_get_settings() {
	var oldcol = draw_get_colour()
	var oldfnt = draw_get_font()
	var oldh = draw_get_halign()
	var oldv = draw_get_valign()
	return [oldcol,oldfnt,oldh,oldv]
}
function draw_set_settings(oldsett) {
	draw_set_colour(oldsett[0])
	draw_set_font(oldsett[1])
	draw_set_halign(oldsett[2])
	draw_set_valign(oldsett[3])
}
#endregion