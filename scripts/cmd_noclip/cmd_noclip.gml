function cmd_noclip(){
	with obj_mainchara {
		noclip = !noclip
		sdm($"NOCLIP STATE: {noclip ? "TRUE" : "FALSE"}")
	}
}