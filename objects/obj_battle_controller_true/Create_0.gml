var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);  // This should be 640
var cam_h = camera_get_view_height(cam); // This should be 480

// 2. Get the current resolution of the GUI Layer
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// 3. Absolute Room Coordinates you want to target
var room_target_x = 32;
var room_target_y = 250;

// 4. Subtract camera positions to get "Screen Space", then scale to GUI Space
var text_gui_x = (room_target_x - cam_x) * (gui_w / cam_w);
var text_gui_y = (room_target_y - cam_y) * (gui_h / cam_h);
show_debug_message("ff")
show_debug_message(text_gui_x)
show_debug_message(text_gui_y)
scr_truebattle_setup(global.battlegroup)
instance_create(0,0,obj_battlebt_true)
obj_heart.x = x + 8
obj_heart.y = y + 14
global.msg = []
global.msg[0] = "#t001^002* Test blocks the way!/E"
for (var i = 0; i < array_length(global.msg); i++) {
	global.xx_offset[i] = 64
	global.yy_offset[i] = 420
}
instance_create(0,0,obj_drawer)