global.ogvol = 1
global.volnum = 0
function volume_changer() {
	global.volnum += 2
	if global.volnum > 10 {
		global.volnum = 0
	}
	cmd_volume_set(clamp(global.volnum,1,90))
}
function ldm() {
	global.ldm = !global.ldm
}
function ossafe_fs_switch() {
	if global.osflavor != PC {
		exit
	}
	keyboard_key_press(vk_f4) 
	keyboard_key_release(vk_f4)
}
function ossafe_get_fsstate() {
	if global.osflavor != PC {
		return true
	}
	return window_get_fullscreen()
}
function scr_language_switcher(){
	sdm($"OBJECT: {object_get_name(object_index)}")
	sdm($"OBJECT EVENT: {string(event_type)}")
	
	global.langchoice++
	if global.langchoice >= Language.COUNT {
		global.langchoice = 0
	}
	if global.langchoice < 0 {
		global.langchoice = Language.COUNT-1
	}
	switch global.langchoice {
		case Language.en:
			dump_text("lang_en_ui.json")
			break
		case Language.ceb:
			dump_text("lang_ceb.json")
			break
		default:
			sdm(global.langchoice)
			throw "wtf"
			break
	}
	global.lang = global.langchoice
	scr_save_preferences()
}
function scr_fchange_lang(enumm) {
	switch enumm {
		case Language.en:
			dump_text("lang_en_ui.json")
			break
		case Language.ceb:
			dump_text("lang_ceb.json")
			break
		default:
			throw "wtf"
			break
	}
	global.lang = enumm
	global.langchoice = global.lang
}
function scr_translate_enum_lang(num) {
	switch num {
		case Language.en:
			return "English"
		case Language.ceb:
			return "Cebuano/Bisaya"
		default:
			return "* Error"

	}
}
function scr_get_settings() {
	var setts = [
		new Setting_Option("Language: ", scr_translate_enum_lang(global.lang), scr_language_switcher),
		new Setting_Option("Fullscreen: ", boolstr(ossafe_get_fsstate()), ossafe_fs_switch),
		new Setting_Option("Volume Multiplier: ",string(global.volnum)+"x",volume_changer),
		new Setting_Option("Low detail mode: ",boolstr(global.ldm), ldm),
	]
	return setts
}