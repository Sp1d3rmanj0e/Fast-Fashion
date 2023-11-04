/// @description Insert description here
// You can write your code in this editor

x = room_width/2;
y = room_height;

vsp = 0;

alarm[0] = 2 * room_speed;

closing_the_letter = false;

function close() {
	closing_the_letter = true;
	audio_play_sound(snd_paper, 1, 0, 1.3);
}

audio_play_sound(snd_paper, 1, 0, 1.3);