if (instance_exists(obj_player)) {
if (!collision_line(x, y, obj_player.x, obj_player.y - 40, obj_solid, false, false)) && (distance_to_object(obj_player) < 200) { 
	alert = true
	alarm[0] = 120
} else if (alarm[0] < 1) {
	alert = false
}
	var xTarget = 1
	if (x > target.x) && (alert) {
		xTarget = -1
		image_xscale = -1				
	}
		if (x < target.x) && (alert) {
			xTarget = 1
			image_xscale = 1				
		}
if (alert) {
	spd[h] += xTarget*accel
	spd[h] = clamp(spd[h], -max_spd, max_spd)
} else {
	spd[h] = 0
}
if (place_meeting(x, y, obj_player)) {
	contact = true
	spd[h] = 0
} else {
	contact = false	
}

if (!place_meeting(x, y + 1, obj_solid)) {
	spd[v] += grav
}
}



