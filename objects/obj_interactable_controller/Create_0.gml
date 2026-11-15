// Inherit the parent event

array_push(global.interactable_controllerids,{_id: id, slot: _id})
can_move = true
awarded = false
interact_counter = 0
visible = is_drawn
choiced = false
og_layer = noone
if layer_exists(layer)
	og_layer = layer_get_name(layer)
if !variable_instance_exists(self,"_convo") {
	_convo = 0
}
