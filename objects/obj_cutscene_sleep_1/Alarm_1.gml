with obj_fader_menu {
	image_alpha = 0.99
	incrementor = 0.01
}
var alarm1 = time_source_create(time_source_game,135,time_source_units_frames,function(){
	var kris = cutscene_get_actor_instance(Actors.Kris)
	cutscene_walk(kris,Left,2,45)
	with obj_cutscene_sleep_1 {
		alarm[0] = 65
	}
})
array_push(alarms,alarm1)
time_source_start(alarm1)