/// @description Insert description here
// You can write your code in this editor

if  (!instance_exists(obj_letter))					// There isn't already a letter
and (obj_questionController.question_shown != true)	// (and) There isn't an active question
and (!instance_exists(obj_endScreenController)) {	// (and) The game hasn't ended
	with (instance_create_layer(0, 0, "Instances", obj_letter)) {
		image_index = obj_questionController.question;
	}
}