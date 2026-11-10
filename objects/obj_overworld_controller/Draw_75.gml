if keyboard_check_pressed(ord("J")) {
	if !directory_exists("Debug Screenshots") {
		directory_create("Debug Screenshots")
	}
	screen_save("Debug Screenshots/debug.png")
}
