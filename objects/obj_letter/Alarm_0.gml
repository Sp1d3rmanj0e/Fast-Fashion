/// @description Insert description here
// You can write your code in this editor

instance_create_depth(x, y + sprite_height-100, depth-1, obj_button,
{
	text: "Put Away",
	button_script: BSCRIPT.CLOSE_LETTER
})