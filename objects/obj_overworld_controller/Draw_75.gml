if keyboard_check_pressed(ord("J")) {
	if !directory_exists("Debug Screenshots") {
		directory_create("Debug Screenshots")
	}
	screen_save("Debug Screenshots/debug.png")
}
var sett = draw_get_settings()
draw_set_colour(c_white)
draw_set_font(fnt_main)
draw_text(0,320,$"ROOM: {room_get_name(room)}")
draw_set_settings(sett)
