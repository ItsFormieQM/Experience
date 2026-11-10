function cmd_set_hp(amount){
	amount = real(amount)
	global.hp[0] = amount
}
function cmd_set_maxhp(amount) {
	amount = real(amount)
	global.maxhp[0] = amount
}