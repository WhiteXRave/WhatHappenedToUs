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
scr_floors()