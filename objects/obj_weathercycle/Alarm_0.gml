weatherlen = floor(random_range(8,12))
var cmp = floor(random_range(0,100))
if floor(cmp) == 100{
	weather = Weather
}
if global.flag[Flag.Story_Route] == Route.Aggressive {
	weatherlen = round(random_range(20,120))
}
else if global.flag[Flag.Story_Route] == Route.Dating {
	weatherlen = round(random_range(30,180))
}
weatherlen *= 60
weatherlen *= 60
global.flag[Flag.Game_WeatherTimer] = weatherlen
alarm[0] = weatherlen