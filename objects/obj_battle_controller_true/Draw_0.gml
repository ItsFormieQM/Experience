draw_self()
var scale = 1.8
var oldfnt = draw_get_font()
var oldcol = draw_get_colour()
draw_set_colour(c_white)

var xx = 30
var yy = 400
var use_font = fnt_truebattle_name
var i = 1
draw_set_font(fnt_truebattle_name)
while (i < string_length("Kris")) {
	if (ord(string_char_at("Kris", i)) >= 12288){
		use_font = 12
		yy += 3
		break
	}
	else {
		i++
		continue
	}
}
draw_set_color(c_white)
var namewidth = string_width("Kris")

draw_text((xx + namewidth), 400, ("   LV " + string(global.lv)))
var hpbarscale = 0.25
draw_set_color(c_red)
draw_rectangle(275, 400, (275 + (global.maxhp[0] * hpbarscale)), 420,false)
draw_set_color(c_yellow)
draw_rectangle(275, 400, (275 + (global.hp[0] * hpbarscale)), 420,false)
draw_set_color(c_white)

var hpwrite = string(global.hp[0])
draw_text((290 + (global.maxhp[0] * hpbarscale)), 400, ((hpwrite + " / ") + string(global.maxhp[0])))
draw_set_colour(c_white)
draw_set_font(use_font)
draw_text(xx, yy, "Kris")
var maxwidth = 0
//for (i = 0; i < 3; i++) {
//	if (global.monster[i] == true) {
//		var name = global.monstername[i]
		
//		var width = (string_length(name) * 16)
//		if (width > maxwidth)
//			maxwidth = width
//	}
//}
//var xwrite = (190 + maxwidth)
//for (i = 0; i < 3; i++) {
//	if (global.monster[i] == true) {
//		draw_set_color(c_red)
//		var lineheight = 32
//		var y_start = 280
		
//		draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + 100), ((y_start + (i * lineheight)) + 16), false)
//		draw_set_color(c_lime)
//		draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + ((global.monsterhp[i] / global.monstermaxhp[i]) * 100)), ((y_start + (i * lineheight)) + 16), false)
//	}
//}
if global.selected == BattleTrue_Commands.Fight
{
	for (i = 0; i < array_length(global.true_battle_enemies); i++)
	{
		if (global.true_battle_enemies[i] != noone)
		{
			var name = global.true_battle_enemyname[i]
			
			var width = string_length(name) * 16
			if (width > maxwidth)
				maxwidth = width
		}
	}
	var xwrite = (190 + maxwidth)
	for (i = 0; i < array_length(global.true_battle_enemies); i++)
	{
		if (global.true_battle_enemyname[i] != noone)
		{
			draw_set_color(c_red)
			var lineheight = 32
			var y_start = 280
			
			draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + 100), ((y_start + (i * lineheight)) + 16), false)
			draw_set_color(c_lime)
			draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + ((global.true_battle_enemyhp[i]._hp / global.true_battle_enemyhp[i]._maxhp) * 100)), ((y_start + (i * lineheight)) + 16), false)
		}
	}
}
draw_set_font(oldfnt)