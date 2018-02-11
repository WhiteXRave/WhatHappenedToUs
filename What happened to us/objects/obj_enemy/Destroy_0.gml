audio_play_sound(snd_explosion, 5, false)
score += 10
rofl = instance_create_layer(x, y, "Units", obj_enemy_death)
if (distance_to_object(obj_player) <= 150) {
	rofl.sprite_index = spr_enemy_death_alert
}

cursor_sprite = spr_crosshair
