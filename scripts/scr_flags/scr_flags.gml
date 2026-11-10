function scr_flags(){
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
		Game_WeatherTimer, // 22
		Story_IntroKrisHouse_Cutscene, // 23
		Player_Running, //24
		Story_RefusedSOUL,// 25
		Story_DeathCount, // 26
		Story_DayState, // 27
		Story_Day2Intro_School, // 28
		Story_FightingSusie_1, // 29
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
		"Story_IntroKrisHouse_Cutscene",
		"Player_Running",
		"Story_RefusedSOUL",
		"Story_DeathCount",
		"Story_DayState",
		"Story_Day2Intro_School",
		"Story_FightingSusie_1",
	]
}