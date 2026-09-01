letters = [
	{letter: "A"}, 
	{letter: "B"}, 
	{letter: "C"}, 
	{letter: "D"}, 
	{letter: "E"},
	{letter: "F"}, 
	{letter: "G"}, 
	{letter: "H"}, 
	{letter: "I"}, 
	{letter: "J"},
	{letter: "K"}, 
	{letter: "L"}, 
	{letter: "M"}, 
	{letter: "N"}, 
	{letter: "O"},
	{letter: "P"}, 
	{letter: "Q"}, 
	{letter: "R"}, 
	{letter: "S"}, 
	{letter: "T"},
	{letter: "U"}, 
	{letter: "V"}, 
	{letter: "W"}, 
	{letter: "X"}, 
	{letter: "Y"},
	{letter: "Z"},
]
button_pos_map = [
	{}
]
buttons = [
	{button: "BACK"},
	{button: "END"},
]
choices = [
	{button: "YES"},
	{button: "NO"},
]
choice_pos_map = [
	{}
]
_x = room_width / 2
_y = room_height / 2 - 30
name = ""
sel_index = 0
sel_letter = letters[0].letter
alpha = 1
confirmation_prompt = false
offensive = false
colour = c_white
fadeout = false
choice = choices[0].button
choice_index = 0
start_game = false
xscale = 1.2
yscale = 1.2