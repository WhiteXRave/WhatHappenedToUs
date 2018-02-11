/// @description Movement state
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vinput = keyboard_check(ord("W")) - keyboard_check(ord("S"))
var bRUN = (keyboard_check(vk_shift))
if (hinput != 0) {
	spd[h] += hinput*accel
	spd[h] = clamp(spd[h], -max_spd, max_spd)
	camera_set_view_speed(0, -1, -1)
} else {
	//spd[h] = lerp(spd[h], 0, fric)
	spd[h] = 0
	camera_set_view_speed(0, 0, 0)
}

if (!place_meeting(x, y + 1, obj_SolidPar)) {
	spd[v] += grav
} 

if (keyboard_check(ord("D"))) && (jump = false) && (mouse_x > x) && (bRUN) {
	max_spd = 6
		} else if (keyboard_check(ord("A"))) && (jump = false) && (mouse_x < x) && (bRUN) {
			max_spd = 6
} else {
	max_spd = 4
}


