// Draw Event

// 1. Ensure the surface exists, if not, create it matching the water zone size
var _width = sprite_width;
var _height = sprite_height;

if (!surface_exists(surf_reflection)) {
    surf_reflection = surface_create(_width, _height);
}

// 2. Clear the surface and prepare to draw on it
surface_set_target(surf_reflection);
draw_clear_alpha(c_black, 0); // Transparent background

// 3. Draw the reflections relative to this surface
// We draw the player (or specific objects) offset so they line up correctly
if (instance_exists(obj_player)) {
    // Calculate how far the player is from the water line
    var _offset_x = obj_player.x - x;
    var _offset_y = (y - obj_player.y); 

    // Draw the player onto the surface (Normally, we flip it later when drawing the surface)
    // We use the player's sprite but invert the position relative to the surface water line
    draw_sprite_ext(
        obj_player.sprite_index, 
        obj_player.image_index, 
        _offset_x, 
        _height - _offset_y, // Position it at the bottom to mirror upwards
        obj_player.image_xscale, 
        1, // Draw normally here
        0, 
        c_white, 
        1
    );
}

// Reset the drawing target back to the main game screen
surface_reset_target();

// 4. Draw the actual reflection surface onto the room flipped upside down
// Multiplying the yscale by -1 flips the reflection vertically
draw_surface_ext(surf_reflection, x, y + _height, 1, -1, 0, c_white, 0.5); 
