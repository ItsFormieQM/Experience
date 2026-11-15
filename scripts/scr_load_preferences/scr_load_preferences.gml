function scr_load_preferences(){
	var fname = $"{game_save_id}Chapter {global.chapter}/settings_ch{global.chapter}.ini"
	ini_open(fname)
	global.is_fs = bool(ini_read_real("Settings","Fullscreen",0))
	global.setting_profanity = ini_read_string("Settings","Profanity","Off")
	if string_lower(global.setting_profanity) == "on" {
		global.setting_profanity = true
	}
	else {
		global.setting_profanity = false
	}
	ini_close()
}