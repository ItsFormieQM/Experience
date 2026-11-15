if !i_exists(bc) || !leader {
	exit
}
if i_exists(obj_soul_battle) && obj_battlecontroller.fighting {
	if !i_exists(obj_battle_border) {
		scr_bbordersetup(camx_ab+(camw_ab/2),camy_ab+(camh_ab/2)-90,0.4,0.4)
		scr_bsettimer(60*6)
	}
	if i_exists(obj_battle_border) {
		atktimer++
		if atktimer == 0 {
			if atkcount >= 5 {
				scr_bendturn()
			}
		}
		if atktimer == 30 {
			atkcount++
		}
		if atktimer == 120 {
			atktimer = 0
			atkcount = 0
		}		
	}
}
if bc.turns == floor(bc.turns) {
	global.cbmessage[0] = $"#t000^002#fnt001* Placeholder Message Number {floor(bc.turns)}."
	bc.turns += 0.1
}

