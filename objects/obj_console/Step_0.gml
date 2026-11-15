if keyboard_check_pressed(vk_tab) {
	event_user(1)
	keyboard_string = ""
	if instance_exists(obj_mainchara) {
		obj_mainchara.image_index = 0
	}
}
if active {
	if array_length(history_commands) >= 1 {
		if keyboard_check_pressed(vk_up) {
			i--
			if i <= -1 {
				i = array_length(history_commands) - 1
			}
			setcmd()
		}
		else if keyboard_check_pressed(vk_down) {
			i++
			if i >= array_length(history_commands) {
				i = 0
			}
			setcmd()
		}
	}
	if keyboard_check_pressed(vk_enter) {
		event_user(0)
	}
}