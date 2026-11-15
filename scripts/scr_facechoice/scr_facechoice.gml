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
		susie,
		ralsei,
		susie_bangs
	}
	switch choice {
		case facechoice.toriel: // toriel
			global.facechoice = obj_toriel_face_dialogue
			break
		case facechoice.sans:
			break
		case facechoice.papyrus:
			break
		case facechoice.susie:
			global.facechoice = obj_susie_face_dialogue
			break
		case facechoice.susie_bangs:
			global.facechoice = obj_susie_bangs_face_dialogue
			break
		case facechoice.noelle:
			global.facechoice = obj_noelle_face_dialogue
			break
		case facechoice.ralsei:
			global.facechoice = obj_ralsei_face_dialogue
			break
		default:
			break
	}

}