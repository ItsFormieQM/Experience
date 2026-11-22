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

if conv == floor(conv){
	if mercycon == 1 {
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Kris^005,^/you know that you^/started this mess?","susie_enem_1_5"),
				scr_settext("...^015 ^/So why are you holding back?","susie_enem_1_6")
			],
			snd_txtsus,
			[
				1.8,
				2.6,
			]
		)
		mercycon += 0.1
	}
	else if mercycon == 2 {
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
	else if mercycon == 3{
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
	else if mercycon == 4{
		mercycon += 0.1
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Kris^020,^/what are you doing?","susie_enem_1_7"),	
			],
			snd_txtsus,
			[
				1.85,
			]
		)
	}
	else if mercycon == 5{
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Don't you know that^/refusing to fight...","susie_enem_1_7"),
				
			],
			snd_txtsus,
			[
				1.95,
			]
		)
	}
	else if mercycon == 6 {
		
		if true {
			mercycon += 0.1
		
			scr_enemytalk(bbox_left,y,
				[
					scr_settext("Is just gonna hurt^/you at the end?","susie_enem_1_8"),
				
				],
				snd_txtsus,
				[
					1.8,
				]
			)
		}
	}
	else if mercycon == floor(mercycon) && mercycon == 7 {
		mercycon += 0.1
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("....","susie_enem_1_9"),
			],
			snd_txtsus,
			[
				0.67,
			]
		)
	}
	else if mercycon == floor(mercycon) && mercycon == 8 {
		mercycon += 0.1
		idle = spr_susie_b_idle_unhappy
		sprite_index = idle
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("....","susie_enem_1_10"),
			],
			snd_txtsus,
			[
				0.67,
			]
		)
	}
	else if mercycon == floor(mercycon) && mercycon == 9 {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("Kris...","susie_enem_1_11"),
			],
			snd_txtsus,
			[
				0.67,
			]
		)
	}
	else if mercycon == floor(mercycon) && mercycon == 10 {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("...","susie_enem_1_12"),
			],
			snd_txtsus,
			[
				0.9,
			]
		)
	}
	else if mercycon == floor(mercycon) && mercycon == 11 {
		mercycon += 0.1
		
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("I'm sorry...","susie_enem_1_13"),
				scr_settext("I'm sorry for^/everything that happened^/before...","susie_enem_1_14")
			],
			snd_txtsus,
			[
				1.3,
				2.3
			]
		)
	}
}
if conv == 1 {
	if stats.hp != stats.maxhp {
		scr_enemytalk(bbox_left,y,
			[
				scr_settext("So that's it?","susie_enem_1_1"),
				scr_settext("You're just^/gonna kill me?","susie_enem_1_2"),
				scr_settext("...","susie_enem_1_3"),
				scr_settext("Heh^020, Kris...","susie_enem_1_4"),
			],
			snd_txtsus,
			[
				1.4,
				1.45,
				0.585,
				1.3
			]
		)
	}
	
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}

else if conv == 2 {
	
	if true {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}	
else if conv == 3 {
	
	if true {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 4 {
	
	if true{
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 5 {
	
	if true {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 6 {
	
	if true {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == floor(conv){
	scr_enemytalk_fskip()
	conv += 0.1
}
#endregion