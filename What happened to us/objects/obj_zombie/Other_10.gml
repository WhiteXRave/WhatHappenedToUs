if (instance_exists(obj_player)) {
	var xPlayer = 1
	if (!collision_line(x, y, obj_player.x, obj_player.y - 40, obj_SolidPar, false, false)) && (distance_to_object(obj_player) < 100) { 
		alert = true
		alarm[0] = 120
	} else if (alarm[0] < 1) {
		alert = false
	}
		if (alert) {
			if (x > obj_player.x) {
				xPlayer = -1
				image_xscale = -1				
			}
			if (x < obj_player.x) {
				xPlayer = 1
				image_xscale = 1				
			}
			spd[h] += xPlayer*accel
			spd[h] = clamp(spd[h], -max_spd, max_spd)
		} else {
			spd[h] = 0
		}
if (place_meeting(x, y, obj_player)) {
	spd[h] = 0	
}
}
if (!place_meeting(x, y + 1, obj_solid)) {
	spd[v] += grav
}
if (!place_meeting(x, y, obj_player)) && (cfloor < obj_player.cfloor || obj_player.utz = true || obj_player.ladder && !obj_player.uLadder) && (x = obj_player.x + 2 || x = obj_player.x - 2)  {
	image_xscale = 1
	spd[h] = 0
}
/*if (cfloor < obj_player.cfloor) || (ladder) || {
	if (place_meeting(x, y, obj_floor_uLadder)) {
			
	}
}s