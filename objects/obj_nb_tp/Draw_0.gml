if (!surface_exists(healthbar_surf)) healthbar_surf = surface_create(96, 250);
// COPIED FROM DELATRUNE
surface_set_target(healthbar_surf);
draw_clear_alpha(c_white, 0);

if false
    yoffset = lerp(yoffset, -90, 0.25/2);
else
    yoffset = lerp(yoffset, 0, 0.25/2);

yy = camy_ab;
y = (yy + 40 + yoffset);

gpu_set_fog(1, barcolors[4], 0, 0)
draw_sprite(spr_tensionbar, 1, 0, 0);
gpu_set_fog(0, c_white, 0, 0)

if (abs(apparent - global.tp) < 20) apparent = global.tp;
if (apparent < global.tp) apparent += 20/2;
if (apparent > global.tp) apparent -= 20/2;

if (apparent != current) {
    changetimer += 1/4;
    
    if (changetimer > 15) {
		
        if ((apparent - current) > 0)    current += 2/2;
        if ((apparent - current) > 10)   current += 2/2;
        if ((apparent - current) > 25)   current += 3/2;
        if ((apparent - current) > 50)   current += 4/2;
        if ((apparent - current) > 100)  current += 5/2;
		
        if ((apparent - current) < 0)    current -= 2/2;
        if ((apparent - current) < -10)  current -= 2/2;
        if ((apparent - current) < -25)  current -= 3/2;
        if ((apparent - current) < -50)  current -= 4/2;
        if ((apparent - current) < -100) current -= 5/2;
        
        if (abs(apparent - current) < 3) current = apparent;
    }
}

if (current > 0) {
    if (apparent < current) {
        draw_set_color(barcolors[0]);
        draw_rectangle(3, (0 + sprite_height) - 1, (0 + sprite_width) - 1, (0 + sprite_height) - ((current / global.maxtp) * sprite_height), false);
        draw_set_color(barcolors[1]);
        draw_rectangle(3, (0 + sprite_height) - 1, (0 + sprite_width) - 1, (0 + sprite_height) - ((apparent / global.maxtp) * sprite_height), false);
    }
    
    if (apparent > current) {
        draw_set_color(barcolors[2]);
        draw_rectangle(3, (0 + sprite_height) - 1, (0 + sprite_width) - 1, (0 + sprite_height) - ((apparent / global.maxtp) * sprite_height), false);
        draw_set_color(barcolors[1]);
        
        if (maxed == 1)
            draw_set_color(merge_color(barcolors[3], barcolors[1], 0.5));
        
        draw_rectangle(3, (0 + sprite_height) - 1, (0 + sprite_width) - 1, (0 + sprite_height) - ((current / global.maxtp) * sprite_height), false);
    }
    
    if (apparent == current) {
        draw_set_color(barcolors[1]);
        
        if (maxed == 1)
            draw_set_color(merge_color(barcolors[3], barcolors[1], 0.5));
        
        draw_rectangle(3, (0 + sprite_height) - 1, (0 + sprite_width) - 1, (0 + sprite_height) - ((current / global.maxtp) * sprite_height), false);
    }
}

son = 0;

try
{
    if (global.tpsel >= 0)
        son = 1;
}
catch (_ex)
{
    son = 2;
	sdm(_ex)
}

if (son == 2)
    snd_play(snd_vaporized);
	son = 0

if (global.tpsel > 0)
{
    tsiner += 1;
    draw_set_color(barcolors[2]);
	//gpu_set_blendmode_ext(bm_dest_colour, bm_src_alpha)
	var truealpha = abs(sin(tsiner / 8) * 0.5) + 0.2
	var color = barcolors[2]
    theight = (0 + sprite_height) - ((current / global.maxtp) * sprite_height);
    theight2 = theight + ((global.tpsel / global.maxtp) * sprite_height);
    
    if (theight2 > ((0 + sprite_height) - 1)) {
        theight2 = (0 + sprite_height) - 1;
		color = merge_color(barcolors[2], c_black, 0.64);
		truealpha = 0.7
    }
    
	//draw_set_color(merge_color(c_black, color, clamp(truealpha, 0, 1)))
	draw_set_color(color)
	draw_set_alpha(truealpha)
	
    draw_rectangle(3, theight2, (0 + sprite_width) - 1, theight, false);
    draw_set_alpha(1);
	if 0 {
		// Only Writes the Alpha, no Color Difference because adding Zero (c_black) to any Number doesn't add anything.
		gpu_set_blendmode(bm_add)
		draw_set_color(c_black)
		draw_rectangle(3, theight2, (0 + sprite_width) - 1, theight, false);
	}
	gpu_set_blendmode(bm_normal)
}
else
{
    tsiner += 1/2;
}

if (apparent > 20 && apparent < global.maxtp)
    draw_sprite(spr_tensionmarker, 0, 3, (0 + sprite_height) - ((current / global.maxtp) * sprite_height));

draw_sprite(spr_tensionbar, 0, 0, 0);
if 1 {
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(spr_tensionbar_cutout, 0, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
}
surface_reset_target();
draw_surface(healthbar_surf, x, y);
draw_sprite(spr_tplogo, 0, x - 30, y + 30);
draw_set_color(c_white);
draw_set_font(fnt_main_battletxt);
flashsiner += 1/2;
tamt = floor((apparent / global.maxtp) * 100);
maxed = 0;

if (tamt < 100)
{
    draw_text(x - 30, y + 70, string_hash_to_newline(string(floor((apparent / global.maxtp) * 100))));
    draw_text(x - 25, y + 95, string_hash_to_newline("%"));
}

if (tamt >= 100)
{
    maxed = 1;
    draw_set_color(c_yellow);
    draw_text(x - 28, y + 70, string_hash_to_newline("M"));
    draw_text(x - 24, y + 90, string_hash_to_newline("A"));
    draw_text(x - 20, y + 110, string_hash_to_newline("X"));
}
if !finall {
	sdm($"xx {x} yy {y}")
	finall = true
}