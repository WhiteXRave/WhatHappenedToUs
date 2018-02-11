if (image_index = 4) && (zone = false)
{
	image_index = 0
}

if (distance_to_object(obj_player) < 50)  && (!collision_line(x, y, obj_player.x, obj_player.y - 30, obj_solid, false, false))
{
	if (global.bullets < 30) && (keyboard_check_pressed(ord("E")))
	{
		if (global.bullets <= 20) 
		{
			global.bullets = global.bullets + 10
			audio_play_sound(snd_explosion,0,0)
			instance_create_layer(x, y, "Units", obj_ammo_assault_riffle_taken)
			instance_destroy(self)
		} else {
				global.bullets = global.bullets + (global.maxbullets - global.bullets)
				audio_play_sound(snd_explosion,0,0)
				instance_create_layer(x, y, "Units", obj_ammo_assault_riffle_taken)
				instance_destroy(self)	
		}
	}

	if image_index < 5
	{
		zone = true
		image_index = 5
	}
	
	if image_index = 9 
	{
		image_index = 5
	}
	
} else if (image_index > 4) && (zone = true)
		{
			zone = false
			image_index = 0
		}
		