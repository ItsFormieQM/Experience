sdm("identifier "+string(identifier))

if identifier == 10 {
	sdm(identifier)
	if i_exists(obj_battlecontroller) {
		with obj_battlecontroller {
			event_user(2)
		}
	}
}