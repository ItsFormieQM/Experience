
var cam = view_camera[0]
var cam_x = camera_get_view_x(cam)
var cam_y = camera_get_view_y(cam)

var gui_mx = device_mouse_x_to_gui(0)
var gui_my = device_mouse_y_to_gui(0)

var l_held = device_mouse_check_button(0, mb_left)

var dist_from_center = point_distance(gui_mx, gui_my, og_x, og_y)
var hovered = (dist_from_center < 64)

if l_held && hovered {
    ran = true
}

if ran {
    var max_offset = 180
    
    angle = point_direction(og_x, og_y, gui_mx, gui_my)
    var clamped_dist = min(dist_from_center, max_offset)
    
    var target_gui_x = og_x + lengthdir_x(clamped_dist, angle)
    var target_gui_y = og_y + lengthdir_y(clamped_dist, angle)
    
    x = cam_x + target_gui_x
    y = cam_y + target_gui_y
}   

if !l_held {
    ran = false
    
    x = og_x + cam_x
    y = og_y + cam_y
    angle = -999
}
