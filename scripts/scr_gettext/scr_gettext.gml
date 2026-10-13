function scr_gettext(name, _json = "lang_en_ui.json"){
	_json = working_directory + _json
	if !string_ends_with(_json,".json") {
		_json += ".json"
	}
	if !file_exists(_json) {
		
		return {}
	}
	var _name = name
	var buffer = buffer_load(_json)	
	var content = buffer_read(buffer, buffer_string)
	buffer_delete(buffer)
	var parsed = json_parse(content)
	if !variable_struct_exists(parsed,name) {
		return $"Struct didn't contain the value for \"{name}\" on json {filename_name(name)}"
	}
	return parsed[$ _name]
}