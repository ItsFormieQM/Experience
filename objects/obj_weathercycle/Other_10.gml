weather = global.flag[Flag.Story_Weather]
alarm[0] = 5
if global.flag[Flag.Game_WeatherTimer] != false {
	alarm[0] = global.flag[Flag.Game_WeatherTimer]
}
start = true