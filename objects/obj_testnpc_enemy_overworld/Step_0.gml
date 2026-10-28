
var dst = point_distance(x,y,player.x,player.y)
var tdt = 210

if dst <= tdt && !seen {
	seen = true
	snd_play(snd_notice)
	var spotted = instance_create(x,y, obj_actoremotion_exclamation,{actor: noone,delay: 30})
	with spotted {
		x = other.x
		y = other.bbox_top - 20
	}	
	alarm[0] = 30
}
if global.cutscene {
	instance_destroy()
}
if (point_distance(x,y,xstart,ystart) >= 1000 || place_meeting(x,y,obj_water)) && !toofar{
	alarm[4] = 1
	toofar = true
}
if place_meeting(x,y,player) {
	if !touched && chase && !tired {
		touched = true
		snd_play(snd_tensionhorn)
		alarm[2] = 16
		alarm[1] = 40
		global.canmove = false
		chase = false
		speed = 0
		image_speed = 0
	}
}
if giveup {
	if !giveup_calc {
		spdr = 3 + round(random_range(0.01,2.1225))
		giveup_calc = true
	}
	move_towards_point(xstart,ystart,spdr)
	if point_distance(x,y,xstart,ystart) <= spdr {
		x = xstart
		y = ystart
		speed = 0
		giveup_calc = false
		giveup = false
		tired = true
		alarm[5] = 250 + round(random_range(250,5*60 + 4.53232313))
	}
}
if chase{
	if !toofar {
		move_towards_point(player.x,player.y,4)
	}
}