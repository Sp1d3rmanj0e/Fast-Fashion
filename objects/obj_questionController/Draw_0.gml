/// @description Insert description here
// You can write your code in this editor

// Draw the question
if (question_shown) {
	
	draw_set_color(#545454);
	draw_roundrect(x - qbox_width/2, y, x + qbox_width/2, y + qbox_height, false);
	
	// draw text
	draw_set_color(c_white);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	
	draw_text(x,y+qbox_height/2,text);
	
	// reset settings
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

draw_text(20 + sprite_get_width(spr_mailIcon), 27, string(question) + "/8");

draw_sprite(spr_mailIcon, 0, 10, 10);