
alphaer = distance_to_object(player) / 2//abs(((sprite_get_width(middle)*image_xscale)+(sprite_get_height(middle)*image_yscale)))
alphaer = clamp(alphaer,10,40)
image_alpha = 1-((alphaer-10)/30)
