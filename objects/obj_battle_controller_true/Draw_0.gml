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
var namewidth = string_width(string_hash_to_newline("Kris"))

draw_text((xx + namewidth), 400, string_hash_to_newline(("   LV " + string(global.lv))))

draw_set_color(c_red)
draw_rectangle(275, 400, (275 + (global.maxhp[0] * 1.2)), 420,false)
draw_set_color(c_yellow)
draw_rectangle(275, 400, (275 + (global.hp[0] * 1.2)), 420,false)
draw_set_color(c_white)

hpwrite = string(global.hp[0])
draw_text((290 + (global.maxhp[0] * 1.2)), 400, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp[0]))))
draw_set_colour(c_white)
draw_set_font(use_font)
draw_text(xx, yy, string_hash_to_newline("Kris"))
draw_set_font(oldfnt)