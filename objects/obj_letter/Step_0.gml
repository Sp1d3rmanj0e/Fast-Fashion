/// @description Insert description here
// You can write your code in this editor

if (!closing_the_letter) {
	if (y > 224) {
		vsp -= 0.5;
	} else {
		vsp = 0;
	}
} else {
	if (y < room_height) {
		vsp += 0.6;
	} else {
		with(obj_questionController) {
			next_question();
		}
		instance_destroy();
	}
}

y+= vsp;