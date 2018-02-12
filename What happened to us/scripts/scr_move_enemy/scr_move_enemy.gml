///@param speed
///@param bounce
var spd = argument0
var bounce = argument1
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
/*if (place_meeting(x, y + 1, obj_floor)) {
	uuLadder = true	
} else {
	uuLadder = false	
}
if (place_meeting(x, y, obj_floor_uLadder)) {
	uLadder = true	
} else {
	uLadder = false	
}
if (place_meeting(x, y, obj_ladder)) {
	ladder = true
	grav = 0
} else {
	ladder = false
	grav = 1
}
if (ladder = true) && (uLadder = false) {
	spd[h] = 0	
}
if (ladder)  {
	if (up) {
		spd[v] = -4
	} else if (down) && (!place_meeting(x, y + 1, obj_solid)) {
		spd[v] = 4	
	} else {
		spd[v] = 0	
	} 
if (up) && (down) {
	spd[v] = 0	
}
}
if (place_meeting(x, y - 1, obj_floor)) {
	if (up) {
		spd[v] = -4	
	} 
} else if (place_meeting(x, y + 1, obj_floor)) {
	if (down) {
		spd[v] = 4	
	}
}*/
//Slopes
if (place_meeting(x + spd[h], y, obj_slope)) && (hinput != 0)  {
	spd[v] = -7
}
//Movement
x += spd[h] 
y += spd[v]
