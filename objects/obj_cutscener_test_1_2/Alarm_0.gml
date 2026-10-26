global.cutscene = false
ran = false
executed = false
for (var i = 0; i < array_length(alarms); i++) {
	if time_source_exists(alarms[i]) {
		show_debug_message("Destroyed alarm number " + string(alarms[i]))
		time_source_destroy(alarms[i],true)
	}
}
for (var i = 0; i < len(markers); i++) {
	if i_exists(markers[i]) {
		with markers[i] {
			i_destroy()
		}
	}
}
cutscene_unfollow_camera()
alarms = []

mus_fade(20,0)
mus_play(mus_flowercore,1,1,0.85)
mus_fade(1,0)
mus_fade(60,0.8)
audio_stop_sound(mus_pirate_dojo)
with obj_fader_menu {
	image_alpha = 0.99
	incrementor = 0.01
}
// Inherit the parent event
if i_exists(obj_general_marker) {
	instance_destroy(obj_general_marker)
}
instance_destroy()

