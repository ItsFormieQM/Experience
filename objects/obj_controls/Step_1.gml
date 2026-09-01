global.l_click = device_mouse_check_button_pressed(0,mb_left)
global.l_held = device_mouse_check_button(0,mb_left)

global.w_held = keyboard_check(ord(global.w))
global.w_press = keyboard_check_pressed(ord(global.w))

global.a_held = keyboard_check(ord(global.a))
global.a_press = keyboard_check_pressed(ord(global.a))

global.s_held = keyboard_check(ord(global.s))
global.s_press = keyboard_check_pressed(ord(global.s))

global.d_held = keyboard_check(ord(global.d))
global.d_press = keyboard_check_pressed(ord(global.d))

global.interacted = keyboard_check_pressed(ord(global.z))
global.interacted_x = keyboard_check_pressed(ord(global._x))
global.interacted_c = keyboard_check_pressed(ord(global.c))
global.interacted_f = keyboard_check_pressed(ord(global.f))
global.held_x = keyboard_check(ord(global._x))
if global.interacted_x {
	show_debug_message("gng it was working")
}

if global.osflavor == Mobile {
	if point_in_rectangle(
			mx,
			my,
			x1,
			y1,
			x1 + 40,
			y1 + 40
	) {
		if global.l_click {
			global.w_press = true
		}
		if global.l_held {
			global.w_held = true
		}
	}
	if point_in_rectangle(
		mx,
		my,
		x1,
		y1,
		x1 + 40,
		y1 + 40
	) {
		if global.l_click {
			global.a_press = true
		}
		if global.l_held {
			global.a_held = true
		}	
	}
	if point_in_rectangle(
		mx,
		my,
		x1,
		y1,
		x1 + 40,
		y1 + 40
	) {
		if global.l_click {
			global.d_press = true
		}
		if global.l_held {
			global.d_held = true
		}	
	}
	if point_in_rectangle(
		mx,
		my,
		x1,
		y1,
		x1 + 40,
		y1 + 40
	) {
		if global.l_click {
			global.s_press = true
		}
		if global.l_held {
			global.s_held = true
		}	
	}
	if point_in_rectangle(
		mx,
		my,
		x1,
		y1,
		x1 + 40,
		y1 + 40
	) {
		if global.l_click {
			global.interacted = true
		}
	}
	if point_in_rectangle(
		mx,
		my,
		x1,
		y1,
		x1 + 40,
		y1 + 40
	) {
		if global.l_click {
			global.interacted_x = true
		}
	}
	if point_in_rectangle(
		mx,
		my,
		x1,
		y1,
		x1 + 40,
		y1 + 40
	) {
		if global.l_click {
			global.interacted_c = true
		}	
	}
}