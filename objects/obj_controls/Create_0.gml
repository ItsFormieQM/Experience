x1 = 80
y1 = 480 - 180
mx = device_mouse_x_to_gui(0)
my = device_mouse_y_to_gui(0)
angle = 0
if global.osflavor == SwitchNX {
	has_lcon = false
	has_rcon = false
	lcon_id = -1
	rcon_id = -1
}