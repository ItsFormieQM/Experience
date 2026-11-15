if global.flag[Flag.Story_SusieState_1] == SusieState_1.Fought {
	cutscenerer = instance_create(860,220,obj_cutscener_day2_school_postd)
	with cutscenerer {
		image_yscale = 5
	}
	sdm("work")
}
else {
	sdm("fail")
}