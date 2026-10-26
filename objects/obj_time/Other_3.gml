var timesrcs = time_source_get_children(time_source_game)
show_debug_message(timesrcs)
show_debug_message("TIMSR")
for (var i = 0; i < len(timesrcs); i++) {
	if time_source_exists(timesrcs[i]) {
		time_source_destroy(timesrcs[i],true)
	}
}