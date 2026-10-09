///@desc If the actor has no playable or NPC equivalent, use this function to spawn them safely. Returns the ID of the spawned object and can be a substitute for 'cutscene_get_actor_instance'.
///@param {Asset.GMObject} actor_object The object to spawn.
///@param {real} x The x coordinate to spawn the object in.
///@param {real} y The y coordinate to spawn the object in.
function cutscene_actor_create(actor_object,_x,_y){
	return instance_create_depth(_x,_y,depth,actor_object)
}