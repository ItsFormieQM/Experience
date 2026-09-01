function scr_read_json(_json){
	var buffer = buffer_load(_json)	
	var content = buffer_read(buffer, buffer_string)
	buffer_delete(buffer)
	var parsed = json_parse(content)
	return parsed
}