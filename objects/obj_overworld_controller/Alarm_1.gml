if floor(global.flag[Flag.Story_DaysPassed]) % 2 == 0 {
	if random(100) <= 5 {
		if global.flag[Flag.Story_Route] != Route.Dating {
			global.flag[Flag.Story_DreamWorld_EntryChance] += random_range(0.05,5)
		}
		else {
			global.flag[Flag.Story_DreamWorld_EntryChance] += random_range(5,20)
		}
		global.flag[Flag.Story_DreamWorld_EntryChance] = floor(global.flag[Flag.Story_DreamWorld_EntryChance] * 100) / 100
		if global.flag[Flag.Story_Route] == Route.Normal {
		
			global.flag[Flag.Story_DreamWorld_EntryChance] = clamp(
																global.flag[Flag.Story_DreamWorld_EntryChance],
																dream_meter_maxnormal,
																dream_meter_maxnormal
															)
		}
		else if global.flag[Flag.Story_Route] == Route.Dating {
			global.flag[Flag.Story_DreamWorld_EntryChance]  = clamp(
																global.flag[Flag.Story_DreamWorld_EntryChance],
																dream_meter_maxdating,
																dream_meter_maxdating
															)
		}
		else if global.flag[Flag.Story_Route] == Route.Aggressive {
			global.flag[Flag.Story_DreamWorld_EntryChance]  = clamp(
																global.flag[Flag.Story_DreamWorld_EntryChance],
																dream_meter_maxaggressive,
																dream_meter_maxaggressive
				
															)
		}
		global.flag[Flag.Story_DreamWorld_EntryChance] = clamp(global.flag[Flag.Story_DreamWorld_EntryChance],0,100)
	}
}
if dream_init {
	if random(100) <= global.flag[Flag.Story_DreamWorld_EntryChance] {
		
	}
}