draw_self()
if global.flag[Flag.Dream_World] {
	shader_set(shd_dreamworld_btint)
}
else {
	shader_reset()
}