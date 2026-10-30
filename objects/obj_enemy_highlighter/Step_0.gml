timer++
var delay = 0.035
var image_decay = (0.055 / 3)
if timer+85 >= delay && !down{
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