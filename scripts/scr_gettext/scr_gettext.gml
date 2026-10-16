function scr_gettext(name){
	return global.text[$ name]
	
}
function dump_text(json) {
	json = working_directory + json
	var buffer = buffer_load(json)
	var content = buffer_read(buffer,buffer_string)
	buffer_delete(buffer)
	return json_parse(content)
}