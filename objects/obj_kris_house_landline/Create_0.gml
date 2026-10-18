// Inherit the parent event
can_move = true
awarded = false
interact_counter = 0

choiced = false
og_layer = layer_get_name(layer)
if !variable_instance_exists(self,"_convo") {
	_convo = 0
}
called_toriel = false
called_police = false
called_hospital = false
ran = false
talk = function(msc) {
	switch msc {
		case 0:
			cmd_dialogue_play("kris_home_landline_1")
			break
		case 1:
			cmd_dialogue_play("kris_house_entry_landline_call_1",true,0)
			called_toriel = true
			break
		case 2:
			cmd_dialogue_play("kris_house_entry_landline_call_1",true,1)
			called_police = true
			break
		case 3:
			called_hospital = true
			break
		case 4:
			cmd_dialogue_play("kris_house_entry_landline_call_1",true,3)
			break
		default:
			break
	}
}
