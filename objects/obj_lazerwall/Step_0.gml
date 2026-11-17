alphaer = ceil(point_distance(x,y,player.x,player.y)) / abs(((sprite_get_width(middle)*image_xscale)+(sprite_get_height(middle)*image_yscale)))
image_alpha = (1-clamp(alphaer,0,1))
if point_distance(x,y,player.x,player.y) <= 20 {
	image_alpha = point_distance(x,y,player.x,player.y) / abs(((sprite_get_width(middle)*image_xscale)+(sprite_get_height(middle)*image_yscale)))
}