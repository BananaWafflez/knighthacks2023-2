/// @description Insert description here
// You can write your code in this editor


move_speed = 6;
jump_speed = 16;

move_x = 0;
move_y = 0;

canDash = false;
dashDistance = 250;
dashTime = 7;

timer = 5;
my_tilemap = layer_tilemap_get_id("groundtiles");

StateFree = function()
{
	move_x = (keyRight - keyLeft) * move_speed;

	if (canDash) && (keyDash){
		canDash = false;
		canJump = 0;
		dashDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
		dashSp = dashDistance/dashTime;
		dashEnergy = dashDistance;
		state = StateDash;
	}
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
	canDash = true;

	move_and_collide(move_x, move_y, my_tilemap);

	if(move_x != 0) {
		image_xscale = sign(move_x);
		image_speed  = 1;
	}

}
StateDash = function(){
	move_x = lengthdir_x(dashSp, dashDirection);
	move_y = lengthdir_y(dashSp, dashDirection);
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
		canDash = true;

		move_and_collide(move_x, move_y, my_tilemap);

		if(move_x != 0) {
			image_xscale = sign(move_x);
			image_speed  = 1;
		}
		dashEnergy -= dashSp;
		if(dashEnergy <= 0){
			move_y = 0;
			move_x = 0;
			state = StateFree;
		}
}
state = StateFree;

