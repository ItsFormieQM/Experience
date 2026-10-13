///@desc Returns the instance handle for a specific actor.
///@param {real} name Use the enum Actors.[actornamehere]!
function cutscene_get_actor_instance(name){
	var handle = noone
	for (var i = 0; i < array_length(global.actors);i++) {
		if global.actors[i] == noone {
			continue
		}
		if global.actors[i].actor_name == name {
			handle = global.actors[i].actor
			
			return handle
		}
	}
	
}