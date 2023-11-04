/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite_ext(spr_yourScoreArrow, 0, x, y, 1, 1, angle, c_white, 1);

draw_set_halign(fa_center);

if (angle != target_angle) {
	draw_text(x, bbox_bottom + 15, string(lerp(0, totalScore, (angle-180)/(target_angle-180))) + "/7");
} else {
	draw_text(x, bbox_bottom + 15, string(totalScore) + "/7");
}

draw_set_halign(fa_left);