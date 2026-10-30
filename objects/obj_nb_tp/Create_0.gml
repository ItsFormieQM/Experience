tsiner = 0;
select = 0;
apparent = global.tp;
current = global.tp;
change = 0;
changetimer = 15;
red = 0;
redtimer = 0;
xx = camx_ab;
yy = camy_ab;
y = yy + 40;
x = xx - 40;
hspeed = 13/2;
friction = 1/4;
flashsiner = 0;
maxed = 0;
healthbar_surf = surface_create(96, 250);
yoffset = 0;
bluebar = 0
global.maxtp = 100
global.tpsel = 0
barcolors = []
bcolor = [{ usedtp : 255, id : 0, currenttp : 4235519, maxtp : 65535, backing : 128, glow : 16777215, name : "TensionLight" },{ usedtp : 16711680, id : 1, currenttp : 12599296, maxtp : 8421376, backing : 8388608, glow : 16777215, name : "TensionDark" },{ usedtp : 16711680, id : 1, currenttp : 7482099, maxtp : 9483781, backing : 1047467, glow : 6666666, name : "TensionDate" }]
setcolor = function(colorid) {
	try {
		barcolortype = colorid
		if bcolor[barcolortype % array_length(bcolor)] == false barcolortype = 0
		
		with bcolor[barcolortype % array_length(bcolor)] {
			other.barcolors = [
				usedtp,
				currenttp,
				glow,
				maxtp,
				backing,
				name
			]
			sdm("***** TensionBar Color set to (" + string(colorid) + ") | " + name)
			return self
		}
	}
	catch (ex) {
		sdm(ex)	
		return noone // FAILED.
	}
}
finall = false
setcolor(0)