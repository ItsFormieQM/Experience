if place_meeting(x,y,obj_mainchara) && !ran {
	
	global.cutscene = true
	ran = true
	
}
if instance_exists(global.actors[0]) && ran {
	
	if !executed {
		
		show_debug_message(global.actors)
		delay = 120
		dir = Left
		sp = 2
		global.actors[0].cutscene_walk(dir,sp,delay)
		obj_mainchara.dir = dir
		alarm[0] = delay
		executed = true
		
		with obj_camera_cutscene {
			move_cam(other.dir,0.05, other.delay - 60)
		}
	}
	
}