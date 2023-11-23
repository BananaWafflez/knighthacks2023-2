/// @description Insert description here
// You can write your code in this editor

healthbar = 20;
respawn = 5;
delay = 0;
canMove = true;
move_speed = 2;
StateMove = function(){
	if(visible != 0){
		//move_and_collide(1 * move_speed,0, Object1.my_tilemap);
		if(!place_meeting(bbox_right + 1, bbox_bottom + 1, Object1.my_tilemap))
		{
			show_debug_message("Right foot");
			move_speed = -2;
			move_and_collide(1 * move_speed,0, Object1.my_tilemap);
		}else if(!place_meeting(bbox_right - 1, bbox_bottom -1, Object1.my_tilemap)){
			move_speed = 2;
			show_debug_message("Left foot");
		} 
		move_and_collide(1 * move_speed,0, Object1.my_tilemap);
		

		
	}
	else{
		canMove = false;
	}
}
state = StateMove;