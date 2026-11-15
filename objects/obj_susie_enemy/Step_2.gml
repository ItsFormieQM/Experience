if !i_exists(bc) {
	exit
}
if i_exists(obj_soul_battle) && obj_battlecontroller.fighting {
	if !i_exists(obj_battle_border) {
		scr_bbordersetup(camx_ab+(camw_ab/2),camy_ab+(camh_ab/2)-90,0.8,0.8)
		scr_bsettimer(60*6)
	}
	if i_exists(obj_battle_border) {
		atktimer++
		if sprite_index == spr_susie_rb {
			if floor(image_index) == 6 {
				image_index++
				snd_play(snd_rudebuster_swing,1.1)
				instance_create(x,y-68,obj_susie_rb_bullet,{},true)
				atkcount++
				global.tp += irandom_range(4,25)
			}
		}
		if atktimer == 0 {
			if atkcount >= 5 {
				scr_bendturn()
			}
		}
		if atktimer == 30 {
			image_index = 0
			sprite_index = spr_susie_rb
			atkanim = true
		}
		if atktimer == 120 {
			atktimer = 0
			atkcount = 0
		}		
	}
}
if bc.turns == 1 {
	global.cbmessage[0] = "#t000^002#fnt001* Susie readies up for another round."
	bc.turns += 0.1
}

