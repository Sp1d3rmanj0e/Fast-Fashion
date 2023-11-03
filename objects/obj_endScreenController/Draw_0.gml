/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite_ext(spr_yourScoreArrow, 0, x, y, 1, 1, angle, c_white, 1);

if (angle != target_angle) {
	draw_text(x, y+25, string(lerp(0, totalScore, (target_angle+90)/(angle+90+0.1))))
} else {
	draw_text(x, y+25, string(totalScore));
}

draw_sprite(0, 0, 0, spr_endScreenText);