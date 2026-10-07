function typersnd_play(typersnd = noone,handle = noone){
	if typersnd == noone {
		return
	}
	randomise()
	enum typer_sound {
		temmie,
		mettaton,
		gaster,
		flowery
	}
	switch typersnd {
		case typer_sound.gaster:
			var rand = irandom_range(1,7)
			switch rand {
				case 1:
					typersnd = snd_wngdng1
					break
				case 2:
					typersnd = snd_wngdng2
					break
				case 3:
					typersnd = snd_wngdng3
					break
				case 4:
					typersnd = snd_wngdng4
					break
				case 5:
					typersnd = snd_wngdng5
					break
				case 6:
					typersnd = snd_wngdng6
					break
				case 7:
					typersnd = snd_wngdng7
					break
				default:
					typersnd = snd_wngdng1
					break
				
			}
			break
		case typer_sound.flowery:
			
			rand = irandom_range(1,3)
			
			
			switch rand {
				case 1:
					typersnd = snd_flowery_vn1
					
					break
				case 2:
					typersnd = snd_flowery_vn2
					
					break
				case 3:
					typersnd = snd_flowery_vn3
					
					break
				default:
					typersnd = noone
					
					break
			}
			break
		default:
			break
	}
	
	if typersnd != noone {
		if audio_exists(handle) {
			audio_stop_sound(handle)
		}
		handle = audio_play_sound(typersnd,1,false,1.5)
	}
	return handle
}