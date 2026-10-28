global.cutscene = false
ran = false
executed = false
for (var i = 0; i < array_length(alarms); i++) {
	if time_source_exists(alarms[i]) {
		show_debug_message("Destroyed alarm number " + string(alarms[i]))
		time_source_destroy(alarms[i],true)
	}
}
alarms = []
mus_fade(60,1)