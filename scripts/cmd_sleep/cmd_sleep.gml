function cmd_sleep(timeinframes){
	if !string_canbe_int(timeinframes) {
		return -1
	}
	timeinframes = real(timeinframes)
	pause(timeinframes)
}