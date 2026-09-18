image_xscale = 0.7
image_yscale = 0.7
if !variable_instance_exists(self,"border_x") {
	border_x = x
}
if !variable_instance_exists(self,"border_y") {
	border_y = y
}
var top = instance_create(x,y,obj_soul_wall,{border_w: image_xscale,border_h:1})
top.y = sprite_height - y + 82
top.x -= 120
top.image_xscale = sprite_width
top.image_yscale = 0.1

var bottom = instance_create(x,y,obj_soul_wall,{border_w: image_xscale,border_h:1})
bottom.y = sprite_height + y - 135
bottom.x -= 120
bottom.image_xscale = sprite_width
bottom.image_yscale = 0.1
show_debug_message($"BOTTOM X: {bottom.x} BOTTOM Y: {bottom.y}")

var left = instance_create(x,y,obj_soul_wall,{border_w: image_xscale,border_h:1})
left.y = sprite_height + y - 480
left.x -= 93
left.image_xscale = 0.1
left.image_yscale = sprite_height
show_debug_message($"LEFT X: {left.x} LEFT Y: {left.y}")

var right = instance_create(x,y,obj_soul_wall,{border_w: image_xscale,border_h:1})
right.y = sprite_height + y - 480
right.x += 90
right.image_xscale = 0.1
right.image_yscale = sprite_height
show_debug_message($"RIGHT X: {right.x} RIGHT Y: {right.y}")