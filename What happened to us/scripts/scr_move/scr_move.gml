///@param speed
///@param bounce
var spd = argument0
var bounce = argument1
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
//Collision

if place_meeting(x+spd[h], y, obj_SolidPar) {
	while !place_meeting(x+sign(spd[h]), y, obj_SolidPar) {
		x += sign(spd[h])
	}
	if bounce > 0 {
		spd[@ h] = -spd[@ h]*bounce;
	} else {
		spd[@ h] = 0
	}
}

x += spd[h] 


if place_meeting(x, y+spd[v], obj_SolidPar) {
	while !place_meeting(x, y+sign(spd[v]), obj_SolidPar) {
		y += sign(spd[v])
	}
	if bounce > 0 {
		spd[@ v] = -spd[@ v]*bounce
	} else {
		spd[@ v] = 0
	}
}



//Ladder 

if (place_meeting(x, y, obj_ladder)) {
	ladder = true
	grav = 0
} else {
	ladder = false
	grav = 1
}

if (ladder) {
	if (up) && (!place_meeting(x, y + 85, obj_floor)) {
		spd[v] = -4
	} else if (down) && (!place_meeting(x, y + 1, obj_SolidPar)) {
		spd[v] = 4	
	} else {
		spd[v] = 0	
	} 
if (up) && (down) {
	spd[v] = 0	
}
}
//Slopes
if (place_meeting(x + spd[h], y, obj_slope)) && (hinput != 0)  {
	spd[v] = -7
}
if (place_meeting(x + spd[h], y, obj_slope_floor)) && (hinput != 0) && (place_meeting(x, y + 85, obj_floor))  {
	spd[v] = -7
}

y += spd[v]






