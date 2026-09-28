function cmd_noclip(){
	with obj_mainchara {
		noclip = !noclip
		show_debug_message($"NOCLIP STATE: {noclip ? "TRUE" : "FALSE"}")
	}
}