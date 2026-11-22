function scr_save_preferences(){
	var fname = $"{game_save_id}Chapter {global.chapter}/settings_ch{global.chapter}.ini"
	if file_exists(fname) {
		file_delete(fname)
	}
	ini_open(fname)
	ini_write_real("Settings","Fullscreen",global.is_fs)
	ini_write_string("Settings","Profanity",global.setting_profanity ? "ON":"OFF")
	ini_write_string("Settings","Language",global.lang)
	ini_write_string("Settings","Language (Descriptive)",scr_translate_enum_lang(global.lang))
	ini_close()
}
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
	global.langchoice = ini_read_real("Settings","Language",Language.en)
	ini_close()
}