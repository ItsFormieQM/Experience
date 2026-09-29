if visible {
	if !ran {
		absolute_seconds = global.time div 60
		minutes = absolute_seconds div 60
		seconds = absolute_seconds % 60
		ran = true
	}
}