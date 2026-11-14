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
			],snd_txtsus,
			[
				1.4,
				2.45,
				0.55,
				1.35
			]
		)
	}
	else {
		scr_enemytalk_fskip()
	}
	conv += 0.1
}
else if conv == 2 {
	scr_enemytalk_fskip()
	conv += 0.1
}	
#endregion