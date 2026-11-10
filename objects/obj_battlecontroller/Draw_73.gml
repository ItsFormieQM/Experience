var settings = draw_get_settings()
var hpcol = make_colour_rgb(1,255,255)

if i_exists(obj_battle_ui_fight_kris) {
	var krisatk = obj_battle_ui_fight_kris
	var xsmth = krisatk.x+22
	var ysmth = krisatk.y-14
	
	
	for (var i = 0; i < len(global.heroes); i++) {
		draw_set_colour(c_red)
		draw_rectangle(xsmth,ysmth,xsmth+76,ysmth+9,false)
		draw_set_colour(hpcol)
		draw_rectangle(xsmth,ysmth,xsmth+76*(global.hp[i]/global.maxhp[i]),ysmth+9,false)
		
		
		draw_set_font(fnt_battlehp_normal)
		draw_set_colour(c_white)
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		var hptxt = global.heroes[i].stats.hp
		var maxhptxt = global.heroes[i].stats.maxhp
		
		var xsmthtxt = 0
		draw_text(
			(xsmth+24)+xsmthtxt,
			ysmth-8,
			hptxt
		)
		xsmthtxt += string_width(hptxt)
		
		if !permxbool {
			draw_sprite(spr_hpname_normal,0,
				xsmth + string_width(hptxt)+sprite_get_width(spr_hpname_normal),
				ysmth - 13
			)
		}
		else {
			draw_sprite(spr_hpname_normal,0,
				permx,
				ysmth - 13
			)
		}
		if !permxbool {
			permxbool = true
			permx = (xsmth + string_width("999")+sprite_get_width(spr_hpname_normal))+1
		}
		draw_set_halign(fa_right)
		draw_set_valign(fa_center)
		draw_text(xsmth+77,ysmth-8,maxhptxt)
		
	}
}
draw_set_settings(settings)
