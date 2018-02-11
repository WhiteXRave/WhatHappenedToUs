if (distance_to_object(obj_player) < 120) && (keyboard_check_pressed(ord("E"))) && (roflanbuldiga = true)
{
	image_speed = 2
	audio_play_sound(snd_roflanbuldiga, 5, false)
	roflanbuldiga = false
}