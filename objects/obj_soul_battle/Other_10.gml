var rand = choose(0,1,2,3)
switch rand {
	case 0:
		global.w_press = true
		break
	case 1:
		global.a_press = true
		break
	case 2:
		global.s_press = true
		break
	case 3:
		global.d_press = true
		break
	default:
		break
}