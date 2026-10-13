function cmd_dialogue_play(type = "test_1", isui= true,convo=0){
	if !string_canbe_int(convo) {
		return -1
	}
	convo = real(convo)
	instance_create(-66,-66,obj_interactable_controller,{_convo: convo, dialogue_type: type, force_run: true,award_sound: snd_none, open_sound: snd_none})
}