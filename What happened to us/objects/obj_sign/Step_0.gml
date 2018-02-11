if (distance_to_object(obj_player) < 150) && (dw = false) {
	sprite_index = spr_speaker_on
	image_speed = 0.3
	if (!instance_exists(dialog)){
		dialog = instance_create_layer(x + xoffset, y + yoffset, "Units", obj_dialog)
		dialog.text = text
		alarm[0] = room_speed*4
	} 
}	
