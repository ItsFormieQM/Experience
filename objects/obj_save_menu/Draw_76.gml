if visible {
	if !ran {
		absolute_seconds = global.time div 60
		minutes = absolute_seconds div 60
		seconds = absolute_seconds % 60
		if string_length(string(seconds)) == 1 {
			seconds = string(seconds)
			seconds = "0" + seconds
		}
		ran = true
	}
}