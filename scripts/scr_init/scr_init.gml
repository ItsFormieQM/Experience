function scr_init(){
	audio_channel_num(256)
	global.selectedenemeynormal = 0
	global.interactable_controllerids = []
	randomise()
	global.cbattlemus = []
	global.rooms = []
	global.cbmessage = []
	var rm = room_first 
	while rm != -1 {
		var info = room_get_info(rm)
		array_push(global.rooms,{room_index: rm, persistence: info.persistent})
		rm = room_next(rm)
	}
	global.bdamagefont = font_add_sprite_ext(spr_dmg_goldnum, "0123456789+-%", 20, 0);
	global.btxtfont = font_add_sprite_ext(fntspr_dotumche,
		" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[w]^_`abcdefghijklmnopqrstuvwxyz{|",
		true,
		1
	)
	instance_create(0,0,obj_mus_manager_new)
	global.faceemotion = 0
	display_set_timing_method(tm_sleep)
	display_set_sleep_margin(30)
	
	
	game_set_speed(60, gamespeed_fps)

	// Normal Battle
	global.normalbattle_enemyinst = []
	global.normalbattle_heroinst = []
	global.tp = 100
	global.actables = []
	// End of Table
	global.music = []
	global.played_music = []
	global.prev_mus = noone
	global.text = dump_text("lang_en_ui.json")
	global.mus_list = []
	global.skip_trueb_intro = true
	global.drawer_info = []
	global.chapter = string(1)
	global.show_dialoguebox = true
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
	global.dialogue_enable_progress = true
	for (var i = 1; i <= 128; i++) {
		global.actors[i-1] = noone
	}
	
	global.oldroom = ""
	scr_flags()
	#region set flags to default
	global.flag = array_create(Flag.COUNT,false)
	
	global.flag[Flag.Story_IntroStart] = true
	global.flag[Flag.On_School] = true
	global.flag[Flag.School_Type] = School_Type.Normal
	global.flag[Flag.Days_Awoke] = 0
	global.flag[Flag.Days_Sick] = 0
	global.flag[Flag.Stamina] = 0
	global.flag[Flag.Arrested_Count] = 0
	global.flag[Flag.Story_DaysPassed] = 1
	global.flag[Flag.Story_DreamWorld_EntryChance] = 2
	global.flag[Flag.Game_Seed] = random_get_seed()
	global.flag[Flag.Story_Route] = Route.Normal
	global.flag[Flag.Story_Weather] = Weather.Sunny
	global.flag[Flag.Story_IntroKrisHouse_Cutscene] = true
	global.flag[Flag.Story_Day2Intro_School] = true
	global.flag[Flag.Story_RefusedSOUL] = 0
	global.flag[Flag.Story_DeathCount] = 0
	global.flag[Flag.Story_DayState] = DayState.Evening
	#endregion
	// Create this son first
	if !directory_exists($"Chapter {global.chapter}")
	// Create 5 save directories
	for (var i = 1; i <= 5; i++) {
		if !directory_exists($"Chapter {global.chapter}/save{i}") {
			directory_create($"Chapter {global.chapter}/save{i}")
		}
	}
	
	global.save_folder = $"{game_save_id}Chapter {global.chapter}/save{i}/"
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
	global.maxhp = []
	
	global.hp[0] = 100
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
	
	global.file_number = 1
	global.warper_slot = []
	global.fonts = []
	global.heroes = []
	array_push(global.fonts,font_add_sprite_ext(fntspr_battlehp,"0123456789-+",6,2))
	#region Macros
	#macro PC "PC"
	#macro Mobile "Mobile"
	#macro SwitchNX "Nintendo Switches"
	#macro tsg time_source_game
	#macro tsuf time_source_units_frames
	#macro player obj_mainchara
	#macro fnt_battlehp_normal global.fonts[0]
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
	enum BattleGroup {
		Little_Timmy,
		Tough_Timmy
	}
	enum DayState {
		Morning,
		MidDay,
		Evening,
		PreNight,
		Night,
		Midnight,
		
	}
	#endregion
	var filename = global.save_folder + "savedata.txt"
	sdm("DEFAULT SAVE FOLDER: " + filename)
	// settings page
	global.setting_profanity = true
	global.ldm = false
	if global.osflavor == Mobile {
		global.ldm = true
	}
	// end of sp
}
exception_unhandled_handler(function(ex) {
	snd_play(snd_error)
	
    sdm("================== LOGIC ERROR ===================")
    sdm(ex.longMessage)
    sdm("==================================================")
	cmd_save_cmd_history()
    show_message(ex.longMessage)
	game_end(-111)
    return 1
})
