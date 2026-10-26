var player = obj_mainchara
var dst = point_distance(x,y,player.x,player.y)
var tdt = 210

if dst <= tdt && !seen {
	seen = true
	show_debug_message("FOUND")
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
if place_meeting(x,y,player) {
	if !touched && chase {
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
if chase {
	move_towards_point(player.x,player.y,4)
}