// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum BSCRIPT {
	START,
	INFO,
	CLOSE,
	HOME,
	CLOSE_LETTER,
	CORRECT,
	INCORRECT
}

function buttonScript(_num){
	
	switch(_num) {
		case BSCRIPT.START: 
			room_goto(rm_main);
		break;
		case BSCRIPT.INFO: 
			room_goto(rm_info);
		break;
		case BSCRIPT.CLOSE: 
			game_end();
		break;
		case BSCRIPT.HOME:
			game_restart();
		break;
		case BSCRIPT.CLOSE_LETTER:
			if (instance_exists(obj_letter)) {
				with(obj_letter) {
					close();
				}
			}
			instance_destroy();
		break;
		case BSCRIPT.CORRECT: 
			with(obj_questionController) {
				close_question();
			}
			with (obj_factoryController) {
				add_correct();
				add_decoration(true);
			}
			audio_play_sound(snd_cheer, 1, 0);
		
		break;
		case BSCRIPT.INCORRECT: 
			with(obj_questionController) {
				close_question();
			}
			with (obj_factoryController) {
				add_incorrect();
				add_decoration(false);
			}
			audio_play_sound(snd_boo, 1, 0);
		break;
	}
}