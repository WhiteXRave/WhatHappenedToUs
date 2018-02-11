if (sprite_index = spr_enemy_meele_attack)  {
	hitbox = instance_create_layer(x,y,"Units",obj_hitbox)
	hitbox.image_xscale = image_xscale
	sprite_index = spr_enemy_meele_idle
	alarm[0] = room_speed
}
