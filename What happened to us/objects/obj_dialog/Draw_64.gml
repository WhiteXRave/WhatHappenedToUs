text_count += spd
text_visible = string_copy(text[text_page], 0, text_count)
var xx = (x - camera_get_view_x(view_camera[0]))*display_scale
var yy = (y - camera_get_view_y(view_camera[0]))*display_scale
draw_set_color(c_black)
draw_set_font(fnt_two)
draw_text_ext_color(xx - 115, yy - 15, text_visible, -1, 260, c_red, c_red, c_blue, c_blue, 255)