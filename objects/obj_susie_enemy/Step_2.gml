if i_exists(obj_soul_battle) {
	if !i_exists(obj_battle_border) {
		scr_bbordersetup(camx_ab+(camw_ab/2),camy_ab+(camh_ab/2)-90,0.8,0.8)
		
	}
	if i_exists(obj_battle_border) {
		atktimer++
		if sprite_index == spr_susie_rb {
			if floor(image_index) == 6 {
				image_index++
				snd_play(snd_rudebuster_swing,1.1)
				instance_create(x,y,obj_susie_rb_bullet,{},true)
			}
		}
		if atktimer == 30 {
			image_index = 0
			sprite_index = spr_susie_rb
			atkanim = true
		}
		if atktimer == 120 {
			atktimer = 0
		}
	}
}
