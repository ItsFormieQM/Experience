global.langchoice = Language.en
function scr_language_switcher(){
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
			throw "wtf"
			break
	}
	global.lang = global.langchoice
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
