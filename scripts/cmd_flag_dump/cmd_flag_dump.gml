function cmd_flag_dump(){
	for (var i = 0; i < len(global.flag)-1; i++) {
		sdm($"FLAG {global.flags_name[i]}: {global.flag[i]}")
	}
}