/// @description Insert description here
// You can write your code in this editor

keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_up);
keyUp = keyboard_check(vk_space);
keyDown = keyboard_check(vk_down);
keyDash = keyboard_check_pressed(vk_shift);


state();
if(move_speed == 26){
	time -= delta_time / 1000000;
	
	if(time <= 0){
		move_speed = 6;
	}
}
