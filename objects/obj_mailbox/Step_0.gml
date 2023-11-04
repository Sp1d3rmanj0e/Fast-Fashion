/// @description Insert description here
// You can write your code in this editor

if  (!instance_exists(obj_letter))					// There isn't already a letter
and (obj_questionController.question_shown != true)	// (and) There isn't an active question
and (!instance_exists(obj_endScreenController)) {	// (and) The game hasn't ended
	
	sprite_index = spr_mailboxClosed;
	
	if (alarm[0] = -1) and (!instance_exists(obj_arrow)) {
		alarm[0] = 5 * room_speed;
	}
	
	if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left)) {
		with (instance_create_layer(0, 0, "Instances", obj_letter)) {
			image_index = obj_questionController.question;
		}
	}
} else {
	
	if (instance_exists(obj_arrow)) instance_destroy(obj_arrow);
	alarm[0] = -1;
	sprite_index = spr_mailboxOpen;	
}
