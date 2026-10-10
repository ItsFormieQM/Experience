function scr_init(){
	audio_channel_num(256)
	randomise()
	
	global.start_room = room_deped_hallway_down
	global.true_battle_battlegroup = 0
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
	global.dialogue_autoskip = false
	for (var i = 1; i <= 128; i++) {
		global.actors[i-1] = noone
	}
	global.oldroom = ""
	enum Flag {
		On_School = 0, // 0
		Dream_World, // 1
		School_Type, // 2
		Days_Awoke, // 3
		Is_Sick, // 4
		Days_Sick, // 5
		Has_Drugs_Inside, // 6
		Took_Drugs, // 7
		Stamina, // 8
		Is_Arrested, // 9
		Arrested_Count, // 10
		On_Battle, // 11
		On_RealBattle, // 12
		Story_IntroStart, // 13
		Can_DialogueFastSkip, // 14
		Story_LeftIntroRoom, // 15
		Story_DaysPassed, // 16
		Game_Seed, // 17
		Story_Sleeping, // 18
		Story_DreamWorld_EntryChance, // 19
		Story_Route, // 20
		Story_Weather, // 21
		Game_WeatherTimer,// 22
		COUNT,
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
		"Story_IntroStart",
		"Can_DialogueFastSkip",
		"Story_LeftIntroRoom",
		"Story_DaysPassed",
		"Game_Seed",
		"Story_Sleeping",
		"Story_DreamWorld_EntryChance",
		"Story_Route",
		"Story_Weather",
		"Game_WeatherTimer",
	]
	#region set flags to default
	global.flag = array_create(Flag.COUNT,false)
	global.flag[Flag.On_School] = true
	//global.flag[Flag.Dream_World] = false
	global.flag[Flag.School_Type] = School_Type.Normal
	global.flag[Flag.Days_Awoke] = 0
	//global.flag[Flag.Is_Sick] = false
	global.flag[Flag.Days_Sick] = 0
	global.flag[Flag.Stamina] = 0
	global.flag[Flag.Arrested_Count] = 0
	global.flag[Flag.On_Battle] = false
	global.flag[Flag.Story_IntroStart] = true
	global.flag[Flag.Story_DaysPassed] = 1
	global.flag[Flag.Story_DreamWorld_EntryChance] = 2
	global.flag[Flag.Game_Seed] = random_get_seed()
	global.flag[Flag.Story_Route] = Route.Normal
	global.flag[Flag.Story_Weather] = Weather.Sunny
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
	if os_type == os_windows || os_type == os_linux || os_type == os_macosx {
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
	enum Route {
		Normal,
		Dating,
		Aggressive
	}
	enum School_Type {
		Normal,
	}
	enum Weather {
		Sunny,
		El_Nino,
		Raining,
		Thunderstorm
	}
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