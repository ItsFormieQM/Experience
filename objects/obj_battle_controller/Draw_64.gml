var _name = ""

draw_set_font(fnt_main_small)
for (var i = 0; i < array_length(global.enemies); i++) {
	var enemy = global.enemies[i]
	enemy.highlighted = false
	if fight_nameshow {
		_name = enemy.stats.name
		selected_inst = enemy
		var scale = 2
		draw_sprite_ext(
			spr_heart,
			0,
			global.xx_offset[0] + 70 + 30,
			global.yy_offset[0] + 80 + 35,
			scale + 0.1,
			scale + 0.1,
			0,
			c_white,
			1
		)
		draw_text_ext_transformed(
			global.xx_offset[0] + 70 + 70,
			global.yy_offset[0] + 80,
			$"{_name}",
			1,
			999,
			scale,
			scale,
			0
		)
		enemy.highlighted = true
	}
		
}
if instance_exists(obj_atk_box) {
	draw_text(0,90,$"ATK BOX: X.{obj_atk_box.x} Y.{obj_atk_box.y}")
	draw_text(0,210,$"CHOSE: {chose ? "True" : "False"}")
}	

