animtimer++
var animdelay = 40
var animspr = spr_battle_kris_ui_anim
if animtimer >= animdelay {
	animtimer = 0
	array_push(anim_spr_arr,{spr: animspr,xscale: 2})
}
for (var i = 1; i < array_length(anim_spr_arr); i++) {
	var decrementor = 0.01
	anim_spr_arr[i].xscale -= decrementor
	draw_sprite_ext(
		anim_spr_arr[i].spr,
		0,
		x,
		y,
		anim_spr_arr[i].xscale,
		image_yscale,
		0,
		c_white,
		1
	)
	if anim_spr_arr[i].xscale <= 0 {
		array_delete(anim_spr_arr,i,1)
		array_push(anim_spr_arr,{spr: animspr,xscale: 2})
	}
}