// Inherit the parent event
can_move = true
awarded = false
interact_counter = 0

choiced = false
og_layer = layer_get_name(layer)
if !variable_instance_exists(self,"_convo") {
	_convo = 0
}
ran = false
talk = function() {
	if instance_exists(obj_drawer) {
		return
	}
	global.msg = []
	global.msg[0] = scr_gettext("test_npc_1")
	global.msg[1] = scr_gettext("test_npc_2")
	for (var i = 0; i < array_length(global.msg); i++) {
		global.xx_offset[i] = 68
		global.yy_offset[i] = 960 / 2 + 85
		}
	show_debug_message("dud")
	drawer = instance_create(0,0,obj_drawer)
}
