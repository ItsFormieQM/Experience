timer++
var delay = 2
var image_decay = 0.03
if timer >= delay && !down{
	image_alpha -= image_decay
	timer = 0
}	
if image_alpha <= 0 && !down{
	down = true
}
if down && timer >= delay {
	image_alpha += image_decay
	timer = 0
}
if image_alpha >= 1 && down {
	down = false
}