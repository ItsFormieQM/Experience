global.loggedtxt = {}
function scr_gettext(name){
	global.name = global.text[$name]
	sdm(global.name)
	if is_undefined(global.text[$ name]) {
		return "missing string here!"
	}
	return global.text[$ name]
	
}
function dump_text(json) {
	json = working_directory + json
	var buffer = buffer_load(json)
	var content = buffer_read(buffer,buffer_string)
	buffer_delete(buffer)
	return json_parse(content)
}
function scr_settext(msg,translated) {
	if global.lang == Language.en {
		return msg
	}
	else {
		msg = scr_gettext(translated) 
		
		return msg
	}
}
function scr_switchlang(langabrv,actual) {
	global.text = {}
	global.text = dump_text($"lang_{actual}.json")
	global.lang = langabrv
}