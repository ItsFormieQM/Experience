var cam = view_camera[0]
var camx = camera_get_view_x(cam)
var camy = camera_get_view_y(cam)
x += camx
y += camy
image_xscale = 0.7
image_yscale = 0.7
if !variable_instance_exists(self,"border_x") {
	border_x = x
}
if !variable_instance_exists(self,"border_y") {
	border_y = y
}
var top = instance_create(x, y, obj_soul_wall, {border_w: image_xscale, border_h: 1},true)
top.y = y - (sprite_height / 2) + 22
top.x = x - (sprite_width / 2)
top.image_xscale = sprite_width
top.image_yscale = 0.1
show_debug_message($"TOP X: {top.x} TOP Y: {top.y}")

var bottom = instance_create(x, y, obj_soul_wall, {border_w: image_xscale, border_h: 1},true)
bottom.y = y + (sprite_height / 2) - 24
bottom.x = x - (sprite_width / 2)
bottom.image_xscale = sprite_width
bottom.image_yscale = 0.1
show_debug_message($"BOTTOM X: {bottom.x} BOTTOM Y: {bottom.y}")

var left = instance_create(x, y, obj_soul_wall, {border_w: image_xscale, border_h: 1},true)
left.y = y - (sprite_height / 2)
left.x = x - (sprite_width / 2) + 22
left.image_xscale = 0.1
left.image_yscale = sprite_height
show_debug_message($"LEFT X: {left.x} LEFT Y: {left.y}")

var right = instance_create(x, y, obj_soul_wall, {border_w: image_xscale, border_h: 1},true)
right.y = y - (sprite_width / 2) 
right.x = x + (sprite_width / 2) - 22
right.image_xscale = 0.1
right.image_yscale = sprite_height
show_debug_message($"RIGHT X: {right.x} RIGHT Y: {right.y}")