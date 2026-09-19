switch_soulmode = function(type = SoulMode.Red) {
	if type == SoulMode.Red {
		soulmode = SoulMode.Red
		event_user(1)
	}
	else if type == SoulMode.Orange {
		soulmode = SoulMode.Orange
		event_user(1)
	}
}
takedamage_normal = function(amount = 0, indice = 0) {
	global.hp[indice] -= amount
	snd_play(snd_damage,1.5)
}
enum SoulMode {
	Red = 0,
	Blue = 1,
	Orange = 2,
	Yellow = 3
}
canmove = false
sp = 3
image_alpha = 0
sp = 12
move_ran = false
stop_anim = false
switch_soulmode(SoulMode.Red)
initated = false
othersp = 12
retract = false
end_soulmode = function() {
	ran = false
	retract = true
}


