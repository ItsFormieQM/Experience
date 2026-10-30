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
function cam_setpos_ab(_x,_y) {
	var cam = view_camera[0]
	camera_set_view_pos(cam,_x,_y)
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
///@desc WIP abstraction. Aims to replicate the 'len' function in python to use one global abstraction.
///@param {any} input Input arrays or strings for now.
function len(input) {
	if is_array(input) {
		return array_length(input)
	}
	else if is_string(input) {
		return string_length(input)
	}
	return undefined
}
function lower(str) {
	return string_lower(str)
}
function i_destroy() {
	instance_destroy()
}
function sdm(str="") {
	show_debug_message(str)
}
function i_exists(obj) {
	if instance_exists(obj)
		return true
	return false
}