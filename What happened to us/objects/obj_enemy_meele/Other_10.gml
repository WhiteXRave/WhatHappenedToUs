/// @description Movement state
if (instance_exists(obj_player)) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false)) {
//..........Alert and move..........
		if (sprite_index != spr_enemy_meele_attack) {
			if (distance_to_object(obj_player) <= 200) {
				if (x > obj_player.x ) {
					hspd = -1.6
					sprite_index = spr_enemy_meele_move
					image_speed = 0.4
					image_xscale = 1
				}
				if (x < obj_player.x) {
					hspd = 1.6
					sprite_index = spr_enemy_meele_move
					image_speed = 0.4
					image_xscale = -1
				} 
				if (ceil(x) = ceil(obj_player.x)) || (floor(x) = floor(obj_player.x)) || (floor(x) = ceil(obj_player.x)) {
					hspd = 0
					sprite_index = spr_enemy_meele_idle
					image_speed = 0
				}
//..........Attack..........	
					if (distance_to_object(obj_player) <= 10) {
						hspd = 0	
					}
						if (distance_to_object(obj_player) <= 10) && (sprite_index != spr_enemy_meele_attack) && (attack = false) {
							attack = true
							sprite_index = spr_enemy_meele_attack
							image_speed = 8
						}
		} else { 
			hspd = 0	
		}
	}
}

//..........Jump..........
var cs
if (obj_player.x > x) {
	cs = -11
} else {
	cs = 11		
}
var s = 0
if (hspd > 0) {
	s = 8
} else if (hspd < 0) {
	s = -8
}
var dtj = -10
if (obj_player.x > x) {
	dtj = 10	
} else if (obj_player.x < x) {
	dtj = -10	
}
var ledge = (!instance_position(x + s, y + 20, obj_solid)) && (place_meeting(x, y + 1, obj_solid))
if (place_meeting(x + dtj, y, obj_solid)) && (jump = false) && (y + 13 > obj_player.y) {
			vspd = jump_height
} else if (y + 12 > obj_player.y) && (jump = false) && (distance_to_object(obj_player) < 10) {
			vspd = jump_height	
	} else if (ledge) && (y + 13 > obj_player.y) {
				vspd = jump_height
		}
} else {
	hspd = 0	
}
if (!place_meeting(x, y + 1, obj_solid)) {
	vspd += grav
	jump = true
} else {
	jump = false	
}
/*if (place_meeting(x, y, obj_solid)) {
	y += 1	
}


	
