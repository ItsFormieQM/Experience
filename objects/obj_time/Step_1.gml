
global.deltatime = 1
if global.hp[0] <= 0 {
	global.hp[0] += 0.1
	cmd_kill()
}