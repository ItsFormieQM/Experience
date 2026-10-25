obj_mainchara.visible = true
for (var i = 0; i < len(global.actors); i++) {
	if global.actors[i] == noone {
		continue
	}
	if i_exists(global.actors[i].actor) && global.actors[i].actor == id{
		with global.actors[i].actor {
			instance_destroy()
		}
		global.actors[i] = noone
		show_debug_message(global.actors)
		break
	}
}
