/// @description Insert description here
// You can write your code in this editor

button_ids = ds_list_create();

question = 0; // 0 is the introduction letter

question_shown = false;

qbox_width = 580;
qbox_height= 40;

function next_question() {
	question++;
	
	if (question <= 10) {
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
		case 1: return "1"
		case 2: return "2"
		case 3: return "3"
		case 4: return "4"
		case 5: return "5"
		case 6: return "6"
		case 7: return "7"
		case 8: return "8"
		case 9: return "9"
		case 10: return "10"
	}
	return "error"
}

function get_answers(_questionNum) {
	
	switch(_questionNum) {
		case 1: return ["1bad","1good"];
		case 2: return ["2bad","2good"];
		case 3: return ["3bad","3good"];
		case 4: return ["4bad","4good"];
		case 5: return ["5bad","5good"];
		case 6: return ["6bad","6good"];
		case 7: return ["7bad","7good"];
		case 8: return ["8bad","8good"];
		case 9: return ["9bad","9good"];
		case 10: return ["10bad","10good"];
	}
	return ["there is an","error"]
}

function create_buttons(_answers) {
	
	var _id1, _id2;
	
	randomize();
	var _side = choose(-1, 1);
	
	_id1 = instance_create_layer(x - 150 * _side, y + 50, "Instances", obj_button,
	{
		text : _answers[0],
		button_script: BSCRIPT.INCORRECT
	});
	
	_id2 = instance_create_layer(x + 150 * _side, y + 50, "Instances", obj_button,
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