if battleintro {
	if point_distance(x,y,xpos,ypos) <= spdr {
		battleintro = false
		speed = 0
		x = xpos
		y = ypos
		xstart = xpos
		ystart = ypos
	}
}
#region #dialogue ig
if conv == 1 {
	if stats.hp != stats.maxhp {
		scr_enemytalk(bbox_left,y,
			[
				scr_gettext("susie_enem_1_1"),
				scr_gettext("susie_enem_1_2"),
				scr_gettext("susie_enem_1_3"),
				scr_gettext("susie_enem_1_4"),
			],
			snd_txtsus,
			[
				1.4,
				2.45,
				0.55,
				1.35
			]
		)
	}
	else if mercycon == floor(mercycon) {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Kris^005, you know that you^/started this mess?","susie_enem_1_5"),
				scr_settext("...^015 ^/So why are you holding back?","susie_enem_1_6")
			],
			snd_txtsus,
			[
				2.35,
				2.5,
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}

else if conv == 2 {
	if mercycon == floor(mercycon) {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				"...",
				
			],
			snd_txt1,
			[
				0.6,
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}	
else if conv == 3 {
	if mercycon == floor(mercycon) {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				"....",
				
			],
			snd_txt1,
			[
				0.67,
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 4 {
	if mercycon == floor(mercycon) {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Kris^020, what are you doing?","susie_enem_1_7"),
				
			],
			snd_txtsus,
			[
				2.2,
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 5 {
	if mercycon == floor(mercycon) {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Don't you know that^/refusing to fight...","susie_enem_1_7"),
				
			],
			snd_txtsus,
			[
				2.3,
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 6 {
	if mercycon == floor(mercycon) {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				"....",
				
			],
			snd_txt1,
			[
				0.7,
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == floor(conv){
	scr_enemytalk_fskip()
	conv += 0.1
}

#endregion