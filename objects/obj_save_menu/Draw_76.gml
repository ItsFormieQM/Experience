if visible {
	values = scr_get_savefile_values()
	if !ran {
		current_room = values[3]
		absolute_seconds = values[4] div 60
		minutes = absolute_seconds div 60
		seconds = absolute_seconds % 60
		if string_length(string(seconds)) == 1 {
			seconds = string(seconds)
			seconds = "0" + seconds
		}
		ran = true
	}
}