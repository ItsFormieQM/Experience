if place_meeting(x,y,obj_mainchara) {
	if global.interacted && !i_exists(obj_drawer) {
		global.choice = -1
		cmd_dialogue_play("kris_house_myroom_bed_mybed_1")
	}
	if global.choice == 0 {
		var darkner = instance_create(0,0,obj_fader_menu)
		with darkner {
			incrementor = -0.01
			depth = layer_get_depth("Instances") - obj_mainchara.depth
		}
		global.choice = -1
		alarm[0] = 150
	}
}