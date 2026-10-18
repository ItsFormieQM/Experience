if place_meeting(x,y,obj_mainchara)  {
	
	if global.interacted && !instance_exists(obj_drawer){
		if global.choice == -1 {
			talk(0)
		}
		
		
	}
	if global.choice == 0 {
		global.choice = -1
		if !called_toriel {
			talk(1)
		}
		else {
			talk(4)
		}
	}
	else if global.choice == 1 {
		global.choice = -1
		if !called_police {
			talk(2)
		}
		else {
			talk(4)
		}
	}
	else if global.choice == 2 {
		global.choice = -1
		if !called_hospital {}
		else {
			talk(4)
		}
	}
	else if global.choice == 3 {
		global.choice = -1
	}
}