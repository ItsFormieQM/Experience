ran = false
executed = false
alarms = []
if !variable_instance_exists(id,"spawned") {
	spawned = false
}
var darkner = instance_create(0,0,obj_fader_menu) 
with darkner {
	image_alpha = 0.99
	incrementor = 0.03
}
