/// @description Parasha
//States
event_user(state)

//Healths
if (hp <= 0) {
	instance_destroy(self)
}
//Scripts
scr_move(spd, 0)
scr_player_sprites()
scr_sounds()

closest_ladder = instance_nearest(x, y, obj_ladder)
if (place_meeting(x, y, obj_building)) {
	inBuilding = true	
} else {
	inBuilding = false	
}
if (ladder) && (!uLadder) {
	fLadder = true	
} else {
	fLadder = false	
}
last_ladder = instance_position(x, y, obj_ladder)
