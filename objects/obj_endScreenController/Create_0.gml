/// @description Insert description here
// You can write your code in this editor

totalScore = obj_factoryController.correct;
angle = 90;
target_angle = 90 -18 * totalScore;

instance_create_layer(room_width, 10, "Instances", obj_hyperlink,
{
	icon_index: 0,
	url: "-1",
	text: "Links to More information!"
});

instance_create_layer(room_width, 220, "Instances", obj_hyperlink,
{
	icon_index: 1,
	url: "https://shopduer.com/blogs/uncuffed/how-to-avoid-fast-fashion-10-actionable-ways-to-go-sustainable-duer",
	text: "How to avoid Fast Fashion!"
});

instance_create_layer(room_width, 430, "Instances", obj_hyperlink,
{
	icon_index: 2,
	url: "https://www.worldcleanupday.org/post/fast-fashion-is-destroying-our-planet-what-you-can-do",
	text: "More info on Fast Fashion!"
});

instance_create_layer(room_width, 640, "Instances", obj_hyperlink,
{
	icon_index: 3,
	url: "https://www.greenmatters.com/style/how-to-stop-fast-fashion",
	text: "How to stop Fast Fashion!"
});