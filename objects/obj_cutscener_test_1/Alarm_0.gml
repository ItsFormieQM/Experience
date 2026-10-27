global.cutscene = false
ran = false
executed = false
for (var i = 0; i < array_length(alarms); i++) {
	if time_source_exists(alarms[i]) {
		show_debug_message("Destroyed alarm number " + string(alarms[i]))
		time_source_destroy(alarms[i],true)
	}
}
cutscene_unfollow_camera()
alarms = []

new_mus_free(song[0])
mus_fade(60,1.5)
audio_stop_sound(mus_pirate_dojo)
// Inherit the parent event
if i_exists(obj_general_marker) {
	instance_destroy(obj_general_marker)
}
instance_destroy()

