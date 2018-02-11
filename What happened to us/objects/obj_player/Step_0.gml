/// @description Parasha
//States
event_user(state)

//Gavno iz jeppi
if (hp <= 0) {
	instance_destroy()
}
scr_move(spd, 0)
scr_player_sprites()
scr_sounds()
if (place_meeting(x, y + 1, obj_solid)) {
	ground = true
} else {
	ground = false	
}
