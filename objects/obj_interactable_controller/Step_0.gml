// Inherit the parent event
if place_meeting(x,y,obj_mainchara) && !obj_mainchara.occupied{
	if global.interacted && can_move && !instance_exists(obj_drawer) {
		
		if interact_counter >= 1 && !can_be_reused {
			exit
		}
		interact_counter++
		snd_play(open_sound)
		scr_get_txt(dialogue_type,true)
		instance_create(0,0,obj_drawer)
		obj_mainchara.image_index = 0
		can_move = false
		show_debug_message("ran???/")
		obj_dialogue.visible = true
	}
	if can_move && !instance_exists(obj_drawer) {
		obj_dialogue.visible = false
		
	}
	
}	

if instance_exists(obj_drawer) {
	if obj_drawer.chest_award && !awarded {
		awarded = true
		if reward_points != "noone" {
			global.player_points += real(reward_points)
		}
		if reward_items != "noone" {
			global.player_items += 0
		}
		snd_play(award_sound,1.2)
		if !can_be_reused {
			can_move = false
		}
		else {
			can_move = true
		}
	}
}	
else {
	if can_be_reused {
		awarded = false
		
	}
}