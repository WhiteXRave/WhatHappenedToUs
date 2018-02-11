var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vinput = keyboard_check(ord("W")) - keyboard_check(ord("S"))
var bRUN = (keyboard_check(vk_shift))

if (hinput != 0) && (sndSteps = false) {
	audio_stop_sound(snd_player_steps_walk)
	audio_play_sound(snd_player_steps_walk, 5, true)
	sndSteps = true		
}
if (bRUN) {
audio_sound_pitch(snd_player_steps_walk, 1.9)
} else {
audio_sound_pitch(snd_player_steps_walk, 1.7)
}
if (hinput = 0) {
	sndSteps = false
	audio_stop_sound(snd_player_steps_walk)
}