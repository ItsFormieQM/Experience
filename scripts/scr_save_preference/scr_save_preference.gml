function scr_save_preference(){
	var fname = $"settings_ch{global.chapter}.ini"
	if file_exists(fname) {
		file_delete(fname)
	}
	ini_open(fname)
	ini_write_real("Settings","Fullscreen",global.is_fs)
	ini_close()
}