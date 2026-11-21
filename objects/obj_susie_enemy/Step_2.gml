if !i_exists(bc) {
	exit
}
if i_exists(obj_soul_battle) && obj_battlecontroller.fighting {
	if floor(conv) == 1 {
		if !i_exists(obj_battle_border) {
			scr_bbordersetup(camx_ab+(camw_ab/2),camy_ab+(camh_ab/2)-90,0.6,0.6)
		
		}
		if i_exists(obj_battle_border) {
			if atktimer == 0 {
				if atkcount >= 5 {
					scr_bendturn()
					atkcount = 0
					atktimer = 0
				}
			}
			atktimer++
			if sprite_index == spr_susie_rb {
				if floor(image_index) == 6 {
					image_index++
					snd_play(snd_rudebuster_swing,1.1)
					instance_create(x,y-68,obj_susie_rb_bullet,{},true)
					atkcount++
					
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
	else if floor(conv) == 2 {
		if !i_exists(obj_battle_border) {
			scr_bbordersetup(camx_ab+(camw_ab/2),camy_ab+(camh_ab/2)-90,0.65,0.65)
			bcon++
		}
		if i_exists(obj_battle_border) {
			if atktimer == 0 {
				if atkcount >= 5*9 {
					scr_bendturn()
					atkcount = 0
					atktimer = 0
				}
			}
			atktimer++
			if sprite_index == spr_susie_attack {
				if floor(image_index) == 1 {
					
					snd_play(snd_battleswing,1.1)
					instance_create(x,y+instance_number(object_index),obj_susie_bullet_miniaxe,{},true)
					atkcount++
					
				}
			}
		
			if atktimer == 30 {
				image_index = 0
				sprite_index = spr_susie_attack
				
			}
			if atktimer == 90 {
				atktimer = 0
				
			}		
		}
	}
	else if floor(conv) >= 0{
		if !i_exists(obj_battle_border) {
			scr_bbordersetup(camx_ab+(camw_ab/2),camy_ab+(camh_ab/2)-90,0.65,0.65)
			bcon++
		}
		if i_exists(obj_battle_border) {
			if atktimer == 0 {
				if atkcount >= 5*9 {
					scr_bendturn()
					atkcount = 0
					atktimer = 0
				}
			}
			atktimer++
			if sprite_index == spr_susie_attack {
				if floor(image_index) == 1 {
					
					snd_play(snd_battleswing,1.1)
					instance_create(x,y+instance_number(object_index),obj_susie_bullet_miniaxe,{},true)
					atkcount++
					
				}
			}
		
			if atktimer == 30 {
				image_index = 0
				sprite_index = spr_susie_attack
				
			}
			if atktimer == 90 {
				atktimer = 0
				
			}		
		}
	}
	
}
if bc.turns == 1 {
	global.cbmessage[0] = "#t000^002#fnt001* Susie readies up for another^/  round."
	bc.turns += 0.1
}

