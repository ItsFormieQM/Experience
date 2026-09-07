var _name = ""
for (var i = 0; i < array_length(global.enemies); i++) {
	var enemy = global.enemies[i]
	enemy.highlighted = false
	if fight_nameshow {
		_name = enemy.stats.name
		
		var scale = 2
		draw_text_ext_transformed(
			global.xx_offset[0] + 70,
			global.yy_offset[0] + 80,
			$"* {_name}",
			1,
			999,
			scale,
			scale,
			0
		)
		enemy.highlighted = true
	}
		
}


