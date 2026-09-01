timer++
if keyboard_check_pressed(vk_f4) {
	global.is_fs = !global.is_fs
	window_set_fullscreen(global.is_fs)
	window_center()
}
