/// @description Insert description here
// You can write your code in this editor
show_debug_message("Delay timer: " + string(delay));

if(healthbar == 0){
 visible = 0;
}
if(delay <= 0){
	if(place_meeting(x, y, attack_hitbox)){
		if(healthbar > 0){
			healthbar -= attack_hitbox.damage;
			delay = 0.05;
			show_debug_message("Attacked");
			}
	}
	else if(visible == 0){
		respawn -= delta_time / 1000000;
	}
	else{
		visible = 1;
	}
}
else{
	show_debug_message("On Delay");
	delay -= delta_time / 1000000;
}

