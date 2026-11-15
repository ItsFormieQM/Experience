function folder_get_file_count(dir){
	var i = 0
	var file = file_find_first(dir+"*.*",fa_none)
	
	while file != "" {
		i++
		file = file_find_next()
	}
	file_find_close()
	return i
}