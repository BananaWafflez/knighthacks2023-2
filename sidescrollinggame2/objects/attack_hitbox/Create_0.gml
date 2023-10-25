/// @description Insert description here
// You can write your code in this editor
time = 0.2;
damage = 5;

keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);
keyUp = keyboard_check(vk_space);
keyDown = keyboard_check(vk_down);

attackDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);


//determines direction of attack
if(lengthdir_x(4, attackDirection) > 0){
	x = Object1.x + 44;
}
else{
	x = Object1.x - 44;
}
y = Object1.y;







