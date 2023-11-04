/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height)) and (url != "-1") {
	draw_set_color(c_dkgray);
	if (mouse_check_button_pressed(mb_left)) {
		url_open(url);
	}
} else {
	draw_set_color(c_black);
}
draw_roundrect(x, y, x+width, y+height, false);
draw_sprite(icon_sprite, 0, x + 10+ buffer + sprite_get_width(icon_sprite)/2, y + height/2+5);

draw_set_color(c_aqua);
draw_set_valign(fa_center);
draw_text_ext(x + sprite_get_width(icon_sprite) + buffer*4, y+height/2, text, string_height(text) + 3, width - sprite_get_width(icon_sprite) - buffer * 5);
draw_set_color(-1);
draw_set_valign(fa_top);