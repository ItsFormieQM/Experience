function cmd_mus_setpos(time,relative=false){
	time = real(time)
	relative = bool(relative)
	mus_setpos(time,relative)
}