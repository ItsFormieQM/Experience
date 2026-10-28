var bcolor = 3350579
if (intro == 1) { // SLIDE UP
    if (bp < (bpy - 1))
    {
        if ((bpy - bp) < 40)
            bp += round((bpy - bp) / (2.5 / 2));
        else
            bp += 30 / 2;
    }
    else
    {
        bp = bpy;
    }
    
    if (bp == bpy)
        intro = 0;
}

if (intro == 2) { // SLIDEDOWN
    if (bp > 0) {
        if (round((bpy - bp) / 5) > 15)
            bp -= round((bpy - bp) / (2.5) / 2);
        else
            bp -= 30 / 2;
    }
    else
    {
        bp = 0;
    }
}

draw_set_color(c_black);
draw_rectangle(xx - 10, 481 + yy, xx + 700, ((480 - bp) + yy) - 4, false);
draw_set_color(bcolor);

draw_rectangle(xx - 10, (480 - bp - 3) + yy, xx + 700, (480 - bp - 2) + yy, false);
draw_set_color(bcolor);

draw_rectangle(xx - 10, (480 - bp) + 34 + yy, xx + 700, (480 - bp) + 36 + yy, false);