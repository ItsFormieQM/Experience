function cmd_dialogue_play(type = "test_1", isui= true){
	
	instance_create(-66,-66,obj_interactable_controller,{dialogue_type: type, force_run: true,award_sound: snd_none, open_sound: snd_none})
}