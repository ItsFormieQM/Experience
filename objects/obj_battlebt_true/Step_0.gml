if global.d_press {
	bt++
	ran = false
	if bt >= 4 {
		bt = 0
	}
	snd_play(snd_menu_move,1)
}
else if global.a_press {
	ran = false
	bt-- 
	if bt <= -1 {
		bt = 3
	}
	snd_play(snd_menu_move,1)
}
if !ran {
	ran = true
	
	switch bt {
		case 0:
			with obj_fightbt_true {
				with obj_heart {
					x = other.x + 8
					y = other.y + 14
				}
				obj_fightbt_true.image_index = 1
				obj_actbt_true.image_index = 0
				obj_itembt_true.image_index = 0
				obj_sparebt_true.image_index = 0
			}
			break
		case 1:
			with obj_actbt_true {
				with obj_heart {
					x = other.x + 8
					y = other.y + 14
				}
				obj_fightbt_true.image_index = 0
				obj_actbt_true.image_index = 1
				obj_itembt_true.image_index = 0
				obj_sparebt_true.image_index = 0
			}
			break
		case 2:
			with obj_itembt_true {
				with obj_heart {
					x = other.x + 8
					y = other.y + 14
				}
				obj_fightbt_true.image_index = 0
				obj_actbt_true.image_index = 0
				obj_itembt_true.image_index = 1
				obj_sparebt_true.image_index =0
			}
			break
		case 3:
			with obj_sparebt_true {
				with obj_heart {
					x = other.x + 8
					y = other.y + 14
				}
				obj_fightbt_true.image_index = 0
				obj_actbt_true.image_index = 0
				obj_itembt_true.image_index = 0
				obj_sparebt_true.image_index = 1
			}
			break
	}
}