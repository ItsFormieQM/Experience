for (var i = 0; i < array_length(global.actors); i++) {
	if global.actors[i] == noone {
		break
	}
	if instance_exists(global.actors[i].actor) {
		with global.actors[i].actor {
			instance_destroy()
		}
		global.actors[i] = noone
	}
}
show_debug_message(global.actors)
gc_enable(true)
cutscene_dialogue_autoskip(false)


