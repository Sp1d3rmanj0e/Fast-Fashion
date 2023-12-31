/// @description Insert description here
// You can write your code in this editor

correct = 0;
incorrect = 0;
net = 0;

// Sounds
audio_factory = audio_play_sound(snd_factory, 1, 1, 1);
audio_water = audio_play_sound(snd_water, 1, 1, 1);
audio_birds = audio_play_sound(snd_birds, 1, 1, 1);
audio_industry = audio_play_sound(snd_industry, 1, 1, 1);

function add_correct() {
	correct++;
	net++;
	update_volumes();
}

function add_incorrect() {
	incorrect++;
	net--;
	update_volumes();
}

function update_volumes() {
	
	// Sounds
	audio_sound_gain(audio_factory, net/-10, 100);
	audio_sound_gain(audio_birds, net/10, 100);
	audio_sound_gain(audio_water, 1 + min(0, net/10), 100);
	audio_sound_gain(audio_industry, max(0, net/-10), 100)
}

update_volumes();

function create_decoration(_x, _y, _sprite) {
	with(instance_create_layer(_x, _y, "Structures", obj_choices)) {
		sprite_index = _sprite;
	}
}

// [[]question[]]
// [[good choice], [bad choice]]
// [[x, y, sprite],[x, y, sprite]]
question_sprites_and_locations =
[
[[416, 256, spr_happyWorkers],[239, 271, spr_unhappyWorkers]],
[[0, 0, spr_fish],[782, -27, spr_sludgePipes]],
[[324, 174, spr_sheep],[-453, -51, spr_smokePipes]],
[[50, 0, spr_carrotFarm],[32, 217, spr_garbage]],
[[744, 251, spr_moneyPile],[50, 0, spr_sadMan]],
[[844, 269, spr_picnic],[747, 137, spr_drowningInDrip]],
[[0, 0, spr_localStore],[224, 512, spr_boxMan]]
];

function add_decoration(_isGood) {
	
	var _question = obj_questionController.question;
	
	var _questionArray = question_sprites_and_locations[_question-1];
	var _spriteArray;
	
	if (_isGood) {
		_spriteArray = _questionArray[0];
	} else {
		_spriteArray = _questionArray[1];
	}
	
	var _x = _spriteArray[0];
	var _y = _spriteArray[1];
	var _sprite = _spriteArray[2];
	
	create_decoration(_x, _y, _sprite);
}