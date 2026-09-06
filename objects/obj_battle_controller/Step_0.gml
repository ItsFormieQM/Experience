if ismoving {
	with obj_battle_ui_txtbox {
		
		move_towards_point(x, other.target_y, other.sp)
	}
	with obj_battle_ui_txtbox {
		if point_distance(x,y,x,other.target_y) <= other.sp {
			other.sp = 0
			speed = 0
			ismoving = false
		}
	}
}