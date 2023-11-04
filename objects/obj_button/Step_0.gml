/// @description

var _hover = point_in_rectangle(mouse_x, mouse_y, x-width/2,y,x+width/2,y+height);
var _click = _hover and (mouse_check_button_pressed(mb_left));

// hover
hover = lerp(hover,_hover,0.1);
y = lerp(y,ystart - hover*8,0.1);

// click
if (_click) and (button_script >= 0) {
	script_execute(buttonScript,button_script);
	audio_play_sound(snd_click, 1, 0);
}