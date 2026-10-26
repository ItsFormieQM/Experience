if place_meeting(x,y,obj_mainchara) {
	if global.interacted && !i_exists(obj_drawer) && global.choice != -2{
		global.choice = -1
		if global.flag[Flag.Story_DayState] >= DayState.Evening {
			cmd_dialogue_play("kris_house_myroom_bed_mybed_1")
		}
		else {
			cmd_dialogue_play("kris_house_myroom_bed_mybed_1",1,2)
		}
	}
	if global.choice == 0 {
		
		var krissy = cutscene_get_actor_instance(Actors.Kris)
		cutscene_actor_set_direction(krissy,Left)
		global.flag[Flag.Story_Sleeping] = true
		darkner = instance_create(0,0,obj_fader_menu)
		with darkner {
			incrementor = -0.01
			layer_add_instance("Instances",id)
		}
		global.choice = -2
		alarm[0] = 210
	}
}