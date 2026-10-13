function cmd_switch_soulmode(soulmode){
	
	smode = string_lower(soulmode)
	if !global.flag[Flag.On_Battle] {
		return -1
	}
	with obj_soul_battle {
		switch other.smode {
			case "red":
				switch_soulmode(SoulMode.Red)
			case "orange":
				switch_soulmode(SoulMode.Orange)
			default:
				return -1
		}
		
	}
	return 0
}