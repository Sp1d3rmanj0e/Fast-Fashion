/// @description Insert description here
// You can write your code in this editor

if (angle > target_angle) {
	angle -= 2;
} else {
	angle = target_angle;
	
	if (!instance_exists(obj_button)) {
		instance_create_layer(room_width/2, room_height -100, "Instances", obj_button,
		{
			text: "Home",
			button_script: BSCRIPT.HOME
		})
	}
}