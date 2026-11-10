var setts = draw_get_settings()
if global.osflavor == PC || os_type == os_gxgames{
	global.w_held = keyboard_check(ord(global.w)) || keyboard_check(vk_up)
	global.w_press = keyboard_check_pressed(ord(global.w)) || keyboard_check_pressed(vk_up)
	global.a_held = keyboard_check(ord(global.a)) || keyboard_check(vk_left)
	global.a_press = keyboard_check_pressed(ord(global.a)) || keyboard_check_pressed(vk_left)
	global.s_held = keyboard_check(ord(global.s)) || keyboard_check(vk_down)
	global.s_press = keyboard_check_pressed(ord(global.s)) || keyboard_check_pressed(vk_down)
	global.d_held = keyboard_check(ord(global.d)) || keyboard_check(vk_right)
	global.d_press = keyboard_check_pressed(ord(global.d)) || keyboard_check_pressed(vk_right)
	global.interacted = keyboard_check_pressed(ord(global.z)) || keyboard_check_pressed(vk_enter)
	global.interacted_x = keyboard_check_pressed(ord(global._x))
	global.interacted_c = keyboard_check_pressed(ord(global.c))
	global.interacted_f = keyboard_check_pressed(ord(global.f))
	global.held_x = keyboard_check(ord(global._x))
	global.l_click = device_mouse_check_button_pressed(0,mb_left)
	global.l_held = device_mouse_check_button(0,mb_left)
}
else if global.osflavor == SwitchNX {
	global.w_held = gamepad_button_check(lcon_id,gp_padu)
	global.a_held = gamepad_button_check(lcon_id,gp_padl)
	global.s_held = gamepad_button_check(lcon_id,gp_padd)
	global.d_held = gamepad_button_check(lcon_id,gp_padd)
	global.interacted = keyboard_check_pressed(ord(global.z))
	global.interacted_x = keyboard_check_pressed(ord(global._x))
	global.interacted_c = keyboard_check_pressed(ord(global.c))
	global.interacted_f = keyboard_check_pressed(ord(global.f))
	global.held_x = keyboard_check(ord(global._x))
	global.l_click = device_mouse_check_button_pressed(0,mb_left)
	global.l_held = device_mouse_check_button(0,mb_left)
}
else if global.osflavor == Mobile {
	global.w_held = false
	global.a_held = false
	global.s_held = false
	global.d_held = false
	global.w_press = false
	global.a_press = false
	global.s_press = false
	global.d_press = false
	global.interacted = false
	global.interacted_x = false
	global.interacted_c = false
	global.interacted_f = false
	global.held_x = false
	global.l_click = device_mouse_check_button_pressed(0,mb_left)
	global.l_held = device_mouse_check_button(0,mb_left)
	for (var i = 0; i <= 5; i++) {
		global.l_click = device_mouse_check_button_pressed(i,mb_left)
		global.l_held = device_mouse_check_button(i,mb_left)
	
		var scaler = 45
		var xx = camx_ab+80
		var yy = (camy_ab+camh_ab)-scaler
	
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// S
			draw_text(xx+(12),yy+5,"S")
	
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				if global.l_held {
					global.s_held = true
				}
				if global.l_click {
					global.s_press = true
				}
			}
			else {
				global.s_press = false
				global.s_held = false
			}
			xx = (camx_ab+80)-scaler
			yy = (camy_ab+camh_ab)-scaler*2
	
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// A
			draw_text(xx+(10),yy+5,"A")
	
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				if global.l_held {
					global.a_held = true
				}
				if global.l_click {
					global.a_press = true
				}
			}
			else {
				global.a_press = false
				global.a_held = false
			}
			xx = (camx_ab+80)+scaler
			yy = (camy_ab+camh_ab)-scaler*2
	
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// D
			draw_text(xx+(10),yy+5,"D")
	
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				if global.l_held {
					global.d_held = true
				}
				if global.l_click {
					global.d_press = true
				}
			}
			else {
				global.d_press = false
				global.d_held = false
			}
			xx = (camx_ab+80)
			yy = (camy_ab+camh_ab)-scaler*3
	
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// W
			draw_text(xx+(10),yy+5,"W")
	
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				if global.l_held {
					global.w_held = true
				}
				if global.l_click {
					global.w_press = true
				}
			}
			else {
				global.w_press = false
				global.w_held = false
			}
			xx = (camx_ab+80)+(camw_ab/2)+100
			yy = (camy_ab+camh_ab)-scaler
	
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// Z
			draw_text(xx+(10),yy+5,"Z")
	
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				global.interacted = device_mouse_check_button_pressed(0,mb_left)
		
			}
			else {
				global.interacted = false
			}
	
			xx = (camx_ab+80)+(camw_ab/2)+100+scaler
			yy = (camy_ab+camh_ab)-scaler*2
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// X
			draw_text(xx+(10),yy+5,"X")
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				global.interacted_x = device_mouse_check_button_pressed(0,mb_left)
				if global.l_held {
					global.held_x = true
				}
			}
			else {
				global.interacted_x = false
		
			}
	
			xx = (camx_ab+80)+(camw_ab/2)+100+scaler*2
			yy = (camy_ab+camh_ab)-scaler*3
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// C
			draw_text(xx+(10),yy+5,"C")
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				global.interacted_c = device_mouse_check_button_pressed(0,mb_left)
		
			}
			else {
				global.interacted_c = false
			}

			xx = (camx_ab+80)+(camw_ab/2)+100+scaler*2
			yy = ((camy_ab+camh_ab)-scaler)-(480-scaler)+12
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// F
			draw_text(xx+(10),yy+5,"F")
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				global.interacted_f = device_mouse_check_button_pressed(0,mb_left)
		
			}
			else {
				global.interacted_f = false
			}
			xx = (camx_ab+80)+(camw_ab/2)+100+scaler
			yy = ((camy_ab+camh_ab)-scaler)-(480-scaler)+12
		    draw_set_colour(c_white)
			draw_set_font(fnt_main)
			// Q
			draw_text(xx+(10),yy+5,"Q")
			draw_rectangle(xx,yy,xx+scaler,yy+scaler,true)
			if point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+scaler,yy+scaler) {
				if global.l_click {
					keyboard_key_press(ord("Q"))
					keyboard_key_release(ord("Q"))
					global.l_click = false
				}
		
			}
			else {
		
			}
	}
}
draw_set_settings(setts)