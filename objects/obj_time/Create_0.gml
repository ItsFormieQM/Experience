global.deltatime = 1
sdm($"Deltatime: {global.deltatime}")
timer = 0
global.is_fs = false
scr_init()
room_goto(room_gaster)
texture_prefetch("Default")
scr_load_preferences()
sdm(global.is_fs ? "True" : "False")
window_center()
scr_load_audio_external()
window_set_position(window_get_x(), window_get_y() - 20)
depth = -666

function test(_name,_age) constructor {
	name = _name
	age = _age
	static print = function(_msg) {
		sdm(_msg + $" : Sent from {name} with id {age}")
	}
}
gooner1 = new test("67",2)
gooner2= new test("68",3)
gooner3 = new test("69",4)