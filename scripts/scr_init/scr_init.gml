function scr_init(){
	global.osflavor = pointer_null
	global.msg = []
	global.xx_offset = []
	global.warp_list = [{}]
	global.current_mus = pointer_null
	global.current_mus_file = pointer_null
	global.name = ""
	global.inventory_arr = []
	
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
	if os_type == os_windows || os_type == os_linux || os_type == os_macosx || os_type == os_browser{
		global.osflavor = PC	
	}
	else if os_type == os_android || os_type == os_ios {
		global.osflavor = Mobile
	}
	
	#region Macros
	#macro PC "PC"
	#macro Mobile "Mobile"
	#endregion
	
	#region Enums
	enum Item {
		// Fallback
		invalid = -1,
		air = 0,
		
		// Guns
		gun_glock = 999,
		gun_ar = 1000,
		gun_revolver = 1001,
		
		// Food Items
		food_steak,
		food_apple,
		food_fish,
		food_bread,
		
		// Drugs
		drug_meth,
		drug_fentanyl,
		drug_cocaine,
		drug_heroin,
	}
	#endregion
}