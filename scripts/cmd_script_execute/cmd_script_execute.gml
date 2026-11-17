function cmd_script_execute(_scr){
	var scr = asset_get_index(_scr)
	if scr != -1 {
		scr = script_get_name(scr)
		script_execute(scr)
	}
	return 0
}