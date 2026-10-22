if !ran {
	if i_exists(obj_music_marker_room) {
		with obj_music_marker_room {
			other.mus = mus
		}
		ran = true
		var _id = noone
		for (var i = 0; i < array_last(global.music); i++) {
			if filename_name(global.music[i].mus_name) == mus {
				_id = global.music[i].handle
			}
			if _id == global.current_mus_file {
				exit
			}
			audio_stop_sound(global.current_mus)
			external_play_mus(_id)
		}
	}
	
}