_x = 624
_y = 0
loaded = false
goto_x = 0
goto_y = 0
move_l = false
move_r = false
move_u = false
move_d = false
upspr = spr_frisk_u
downspr = spr_frisk_d
leftspr = spr_frisk_l
rightspr = spr_frisk_r
realobject = obj_mainchara
sp = 2.5
image_speed = 0
dir = 0
ran = false
switched_sprite = false
noclip = true
alpha = 1
colour = 1
removed_variable_1 = false
depth = obj_camera.depth - 1
jump_state = false
rot = 0
image_xscale = obj_mainchara.image_xscale
image_yscale = obj_mainchara.image_yscale
insert_self = function() {
	for (var i = 0; i < array_length(global.actors); i++) {
		if global.actors[i] == noone {
			global.actors[i] = id
			break
		}
	}
}
if realobject == noone {
	insert_self()
}
cutscene_walk = function(dir,_sp,frames) {
	other.sp = _sp
	
	switch dir {
		case Up:
			move_u = true
			break
		case Down:
			move_d = true
			break
		case Left:
			move_l = true
			break
		case Right:
			move_r = true
			break
		default:
			return -1
	}
	moving = true
	alarm[1] = frames
} 
cutscene_set_sprite = function(sprite,spriteframe,delay=-1) {
	alarm[0] = delay
	switched_sprite = true
	sprite_index = sprite
	image_index = spriteframe
}
cutscene_reset_spr = function() {
	alarm[0] = 1
}
cutscene_set_direction_spr = function(up=noone,down=noone,left=noone,right=noone) {
	if up != noone {
		upspr = up
	}
	if down != noone {
		downspr = down
	}
	if left != noone
		leftspr = left
	if right != noone 
		rightspr = right
}
cutscene_reset_direction_spr = function() {
	upspr = spr_frisk_u
	downspr = spr_frisk_d
	leftspr = spr_frisk_l
	rightspr = spr_frisk_r
}
moving = false
rgbed = false
rgb_combined = c_white
cutscene_set_rgb = function(r=0,g=0,b=0){
	rgb_combined = make_colour_rgb(r,g,b)
}


