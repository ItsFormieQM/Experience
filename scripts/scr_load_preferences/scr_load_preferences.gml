function scr_load_preferences(){
	var fname = $"settings_ch{global.chapter}.ini"
	ini_open(fname)
	global.is_fs = bool(ini_read_real("Settings","Fullscreen",0))
	show_debug_message(global.is_fs ? "IS TRUE SON" : "FUCK NO ITS FALSE")
	ini_close()
}