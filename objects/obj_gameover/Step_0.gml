if image_alpha < 1 {
	var incrementor = 0.0085
	image_alpha += incrementor
}
else {
	if !ran {
		ran = true
		alarm[0] = 20
	}
}
if waitfordonity {
	if !instance_exists(obj_drawer) && ran1 == false{
		alarm[2] = 70
		ran1 = true
	}
}