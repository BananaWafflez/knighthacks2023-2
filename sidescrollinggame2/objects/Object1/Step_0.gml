/// @description Insert description here
// You can write your code in this editor

var _keyLeft = keyboard_check(vk_left);
var _keyRight = keyboard_check(vk_right);
var _keyJump = keyboard_check_pressed(vk_up);

move_x = (_keyRight - _keyLeft) * move_speed;


if(place_meeting(x, y+2, my_tilemap))
{
	move_y = 0;
	if (keyboard_check(vk_up)) {
		move_y = -jump_speed;
	}
} else{
	if(move_y < 10) {
		move_y += 1;
	}
}

move_and_collide(move_x, move_y, my_tilemap);

if(move_x != 0) {
	image_xscale = sign(move_x);
	image_speed  = 1;
}

