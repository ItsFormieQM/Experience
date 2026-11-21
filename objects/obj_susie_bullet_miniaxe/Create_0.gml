// Inherit the parent event
event_inherited();
anglerot = 0
direction -= random_range(-35,55)
if !variable_instance_exists(id,"DONOT") {
	repeat irandom_range(0,1) {
		instance_create(x,y,object_index,{DONOT: true})
	}
}
speed -= 2