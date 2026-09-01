function scr_init(){
	global.osflavor = pointer_null
	global.msg = []
	global.xx_offset = []
	global.warp_list = [{}]
	global.current_mus = pointer_null
	global.current_mus_file = pointer_null
	global.name = ""
	
	// CONTROLS
	global.w = "W"
	global.a = "A"
	global.s = "S"
	global.d = "D"
	global.z = "Z"
	global._x = "X"
	global.c = "C"
	global.f = "F"
	global.interacted = 0
	global.canmove = true
	// PLAYER
	global.player_items = 0
	global.player_points = 0
	global.run = false
	if os_type == os_windows || os_type == os_linux || os_type == os_macosx {
		global.osflavor = PC	
	}
	else if os_type == os_android || os_type == os_ios {
		global.osflavor = Mobile
	}
	
	#region Macros
	#macro PC "PC"
	#macro Mobile "Mobile"
	#endregion
}