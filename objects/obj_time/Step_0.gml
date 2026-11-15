timer++
global.time++
if keyboard_check_pressed(vk_f4) && global.osflavor == PC {
	global.is_fs = !global.is_fs
	window_center()
	scr_save_preference()
}
if global.interacted_f {
	inst = choose(gooner1,gooner2,gooner3)
	inst.print("SONION")
}
if keyboard_check_pressed(vk_numpad1) {
	cmd_kill()
}
window_set_fullscreen(global.is_fs)
