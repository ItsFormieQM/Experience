if place_meeting(x,y,obj_mainchara) && !global.flag[Flag.On_Battle] && !instance_exists(obj_drawer) {
	if push_down {
		obj_mainchara.y += force
	}
	if push_up {
		obj_mainchara.y -= force
	}
	if push_right {
		obj_mainchara.x += force
	}
	if push_left {
		obj_mainchara.x -= force
	}
	obj_mainchara.image_index = 0
	SCR_TEXT(dialogue_type,true)
	instance_create(0,0,obj_drawer)
}
