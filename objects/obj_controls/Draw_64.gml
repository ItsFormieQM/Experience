if global.osflavor == Mobile {
	if !instance_exists(obj_joystick) {
		instance_create(0,0,obj_joystick_border)
		instance_create_depth(0,0,-1,obj_joystick)
	}
}
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
global.l_click = device_mouse_check_button_pressed(0,mb_left)
global.l_held = device_mouse_check_button(0,mb_left)
if instance_exists(obj_joystick) && global.osflavor == Mobile {
	angle = obj_joystick.angle
}
if global.osflavor == Mobile {
	if (angle >= 0 && angle <= 89) || (angle >= 271 && angle <= 360) {
		global.d_held = true
	}
	if angle >= 1 && angle <= 180 {
		global.w_held = true // MAJOR
	}
	if angle >= 181 && angle <= 360 {
		global.s_held = true
	}
	if (angle >= 181 && angle <= 269) || (angle >= 91 && angle <= 179){
		global.a_held = true
	}
}