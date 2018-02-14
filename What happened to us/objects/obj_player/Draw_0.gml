/// @description Draw the player and gun
var flipp = 1
if (mouse_x > x ) {
	flipp = 1
} else {
	flipp = -1	
}

draw_sprite_ext(sprite_index, image_index, x, y, flipp, 1, 0, image_blend, image_alpha)
draw_set_font(fnt_one)
draw_set_color(c_red)

draw_text(x + 40, y - 40, +string(upperthanzombie))
//draw_text(x - 40, y - 40, +string(uuLadder))
/*var r = collision_line_point(x, y, mouse_x, mouse_y, obj_SolidPar, true, true)
draw_line(x, y, r[1], r[2])
draw_circle(r[1], r[2], 10, true)
if (r[0] != noone) {
    // r[0] holds the nearest (hit) instance.
}