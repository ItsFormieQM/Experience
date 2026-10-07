function scr_init(){
	audio_channel_num(256)
	global.true_battle = true
	global.cutscene = false
	global.osflavor = pointer_null
	global.msg = []
	global.choice = -1
	global.xx_offset = []
	global.xx_offset_spriter = []
	global.yy_offset_spriter = []
	global.warp_list = [{}]
	global.current_mus = pointer_null
	global.current_mus_file = pointer_null
	global.name = ""
	global.inventory_arr = []
	global.party_list = []
	global.battle_lines = []
	global.enemy_instance_arr = []
	global.battle_xscale = []
	global.battle_yscale = []
	global.battle_txt_x_offset = []
	global.battle_txt_y_offset = []
	global.time = 0
	global.lv = 1
	global.oldtime = 0
	global.oldlv = 0
	global.actors = []
	for (var i = 0; i <= 12; i++) {
		global.actors[i] = noone
	}
	global.oldroom = ""
	enum Flag {
		On_School = 0,
		Dream_World,
		School_Type,
		Days_Awoke,
		Is_Sick,
		Days_Sick,
		Has_Drugs_Inside,
		Took_Drugs,
		Stamina,
		Is_Arrested,
		Arrested_Count,
		On_Battle,
		On_RealBattle,
		COUNT
	}
	global.flags_name = [
		"On_School",
		"Dream_World",
		"School_Type",
		"Days_Awoke",
		"Is_Sick",
		"Days_Sick",
		"Has_Drugs_Inside",
		"Took_Drugs",
		"Stamina",
		"Is_Arrested",
		"Arrested_Count",
		"On_Battle",
		"On_RealBattle",
	]
	global.flag = array_create(Flag.COUNT,false)
	#region set flags to default
	global.flag[Flag.On_School] = false
	global.flag[Flag.Dream_World] = false
	global.flag[Flag.School_Type] = "normal"
	global.flag[Flag.Days_Awoke] = 0
	global.flag[Flag.Is_Sick] = false
	global.flag[Flag.Days_Sick] = 0
	global.flag[Flag.Stamina] = 0
	global.flag[Flag.Arrested_Count] = 0
	global.flag[Flag.On_Battle] = false
	
	#endregion
	// Create 5 save directories
	for (var i = 1; i <= 5; i++) {
		if !directory_exists($"save{i}") {
			directory_create($"save{i}")
		}
	}
	
	global.save_folder = game_save_id + "save1/"
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
	global.buggy_room = false
	global.doors = []
	// PLAYER
	global.player_items = 0
	global.player_points = 0
	global.run = false
	global.flag[Flag.On_Battle] = false
	global.hp = []
	global.maxhp = [90]
	global.hp[0] = 90
	global.maxhp[0] = global.hp[0]
	if os_type == os_windows || os_type == os_linux || os_type == os_macosx || os_type == os_browser{
		global.osflavor = PC	
	}
	else if os_type == os_android || os_type == os_ios {
		global.osflavor = Mobile
	}
	else if os_type == os_switch || os_type == os_switch2 {
		global.osflavor = SwitchNX
	}
	
	#region Macros
	#macro PC "PC"
	#macro Mobile "Mobile"
	#macro SwitchNX "Nintendo Switches"
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
	var filename = global.save_folder + "savedata.txt"
	show_debug_message("DEFAULT SAVE FOLDER: " + filename)
	
}