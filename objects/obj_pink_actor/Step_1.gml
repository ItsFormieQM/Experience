if !switched_sprite && !jump_state {
	switch dir {
		case Up:
			sprite_index = upspr
			break
		case Down:
			sprite_index = downspr
			break
		case Left:
			sprite_index = leftspr
			break
		case Right:
			sprite_index = rightspr
			break
		default:
			break
	}
}