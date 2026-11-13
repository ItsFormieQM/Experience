if global.cutscene {
	visible = false
	
	if !instance_exists(obj_mainchara_actor) {
		_actor = instance_create(x,y,obj_mainchara_actor)
		_actor.depth = depth
		for (var i = 0; i < array_length(global.actors); i++) {
			if global.actors[i] == noone {
				global.actors[i] = {actor_name: Actors.Kris, actor: _actor}
				sdm(global.actors)
				break
			}
		}
		
	}
	if i_exists(_actor) {
		_actor = cutscene_get_actor_instance(Actors.Kris)
		
		with _actor {
			other.x = x
			other.y = y
		}	
		
	}
	//sdm($"X: {kris_actor.x}")
	//sdm($"Y: {kris_actor.y}")
	//sdm($"MAINCHARA: {x}")
	//sdm($"MAINCHARA: {y}")
}
else {
	
}