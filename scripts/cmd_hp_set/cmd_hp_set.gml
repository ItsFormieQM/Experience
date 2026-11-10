function cmd_hp_set(index,hp){
	if string_canbe_int(index) && string_canbe_int(hp) {
		global.hp[real(index)] = real(hp)
		return
	}
	return -1
}
function cmd_maxhp_set(index,hp) {
	if string_canbe_int(index) && string_canbe_int(hp) {
		global.maxhp[real(index)] = real(hp)
		return
	}
	return -1
}	