if active {
	timer++
}
if place_meeting(x,y,obj_mainchara) {
	if !active && global.interacted && !instance_exists(obj_drawer){
		cmd_dialogue_play("choicer_test_2")
		
	}
	if instance_exists(obj_choicer) {
		choiced = false
	}
	if global.choice == 0 && !instance_exists(obj_choicer) {
		if !choiced {
			choiced = true
			mus_fade(30,0)
			handle = snd_play(mus_carrybird,0,1.1)
			snd_fade(handle,100,1)
			global.choice = -1
			alarm[0] = 60 * 23
			active = true
			sprite_index = spr_carrybird_fly
		}
			
	}
	else if global.choice == 1 {
		if !choiced {
			global.choice = -1
			choiced = true
			
		}
	}
}

if !ran {
	if sp == 0 {
		ran = true
	}
	if active {
		global.canmove = false
		var _x = obj_mainchara.x - 12
		var _y = obj_mainchara.y - 70
		move_towards_point(_x,_y,sp)
		if distance_to_point(_x,_y) <= sp {
			sp = 0
			alarm[2] = 30
			alarm[1] = 160 + 30
		}
	}
}
if moveup {
	sp = 1
	y -= sp
	obj_mainchara.x += random_range(-0.01,0.01)
	obj_mainchara.y = (y + 70) + random_range(-1,1)
}
if movesomewhere {
	if dir == Left {
		sp = 2
		x -= sp
		obj_mainchara.x = (x + 12) + random_range(-0.5,0.5)
		obj_mainchara.y = (y + 70) + random_range(-3,3)
	}
}
if timer == 60 * 20 {
	movesomewhere = false
	sp = 0.75
}
if timer >= 60 * 22 {
	
	var _x = _ogx
	var _y = _ogy
	move_towards_point(_x,_y,sp)
	if distance_to_point(_x,_y) <= sp {
		sp = 0
		x = _x
		y = _y
		timer = 0
	}
	if timer == 0 {
		sp = 0
		move_towards_point(_x,_y,sp)
	}
}
if movedown {
	sp = 1
	y += sp
	obj_mainchara.y = (y + 70) + random_range(-1,1)
}

