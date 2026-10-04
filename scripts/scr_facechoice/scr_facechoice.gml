function scr_facechoice(choice){
	if choice == noone {
		global.facechoice = noone
		return
	}
	global.facechoice = noone
	
	enum facechoice {
		toriel,
		sans,
		papyrus,
		noelle,
		flowery,
		flowey,
	}
	switch choice {
		case facechoice.toriel: // toriel
			global.facechoice = noone
			break
		case facechoice.sans:
			break
		case facechoice.papyrus:
			break
		case facechoice.noelle:
			global.facechoice = obj_noelle_face_dialogue
		default:
			break
	}

}