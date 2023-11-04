/// @description Insert description here
// You can write your code in this editor

button_ids = ds_list_create();

question = 0; // 0 is the introduction letter

question_shown = false;

qbox_width = 1000;
qbox_height= 80;

function next_question() {
	question++;
	
	if (question <= 7) {
		text = get_question(question);
		question_shown = true;
	
		answers = get_answers(question);
		create_buttons(answers);
	} else {
		instance_create_layer(room_width/2, room_height-200, "Instances", obj_endScreenController);
	}
}

function get_question(_questionNum) {
	
	switch(_questionNum) {
		case 1: return "How much should we pay our workers?"
		case 2: return "Water Waste - How much water should we be using?"
		case 3: return "What materials should we use to produce our clothing?"
		case 4: return "How often do you need to get new clothes?"
		case 5: return "How much money should you spend on clothing each year?"
		case 6: return "How does Fast Fashion affect You?"
		case 7: return "Where should I be buying my clothing?"
	}
	return "error"
}

// [Bad, Good]
function get_answers(_questionNum) {
	
	switch(_questionNum) {
		case 1: return ["$1.50/hour","$15/hour"];
		case 2: return ["100 trillion liters!!!!","As little as possible"];
		case 3: return ["Use Nylon and Polyester","Use Organic Cotton and Wool"];
		case 4: return ["Every single season","Only when you need to"];
		case 5: return ["Spend Every cent you have!!!!!","Only spend what you need"];
		case 6: return ["It makes you happy!","It makes you sad"];
		case 7: return ["Buy Clothes Online","Buy From Local Stores"];
	}
	return ["there is an","error"]
}

function create_buttons(_answers) {
	
	var _id1, _id2;
	
	randomize();
	var _side = choose(-1, 1);
	
	_id1 = instance_create_layer(x - 210 * _side, y + 90, "Instances", obj_button,
	{
		text : _answers[0],
		button_script: BSCRIPT.INCORRECT
	});
	
	_id2 = instance_create_layer(x + 210 * _side, y + 90, "Instances", obj_button,
	{
		text : _answers[1],
		button_script: BSCRIPT.CORRECT
	});
	
	ds_list_add(button_ids, _id1);
	ds_list_add(button_ids, _id2);
}

function close_question() {
	question_shown = false;
	
	// Delete all answer buttons
	for (var i = 0; i < ds_list_size(button_ids); i++) {
		instance_destroy(ds_list_find_value(button_ids, i));
	}
	
	ds_list_clear(button_ids);
}