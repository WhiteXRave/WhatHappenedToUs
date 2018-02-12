if (instance_exists(obj_player)) {


if (!collision_line(x, y, obj_player.x, obj_player.y - 40, obj_SolidPar, false, false)) && (distance_to_object(obj_player) < 100) { 
	alert = true
	alarm[0] = 120
} else if (alarm[0] < 1) {
	alert = false
}
	var xTarget = 1
	if (x > target.x) {
		xTarget = -1
		image_xscale = -1				
	}
		if (x < target.x) {
			xTarget = 1
			image_xscale = 1				
		}
if (alert) {
	target = obj_player
	spd[h] += xTarget*accel
	spd[h] = clamp(spd[h], -max_spd, max_spd)
} else {
	spd[h] = 0
}
if (place_meeting(x, y, obj_player)) {
	spd[h] = 0	
}

if (!place_meeting(x, y + 1, obj_solid)) {
	spd[v] += grav
}
if (alert) {
	if (obj_player.inBuilding) {
		if (obj_player.upperthanzombie) || (obj_player.fLadder) {
			target = obj_player.closest_ladder
				if (place_meeting(x, y, obj_floor_uLadder)) && (target = obj_player.closest_ladder) {
					spd[h] = 0
					image_xscale = 1
				}
		} else if (alert){
			target = obj_player
		}
	}
}
}


