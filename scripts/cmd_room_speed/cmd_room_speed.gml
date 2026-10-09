function cmd_room_speed(value){
	if string_canbe_int(value) {
		value = real(value)
		game_set_speed(value,gamespeed_fps)
	}
}