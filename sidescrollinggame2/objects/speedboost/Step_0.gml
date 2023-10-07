/// @description Insert description here
// You can write your code in this editor
show_debug_message(instance_exists(speedboost))
if(place_meeting(x, y, Object1)){
	if(visible = 1){
		Object1.move_speed += speed_boost;
		visible = 0;
		time_limit = 5;
	}
	
}
else if(time_limit < 0){
		Object1.move_speed = 6;
		visible = 1;
}
else{
	time_limit -= delta_time / 1000000;
}





