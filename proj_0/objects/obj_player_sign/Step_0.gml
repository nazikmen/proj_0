/// @description Insert description here
// You can write your code in this editor
depth = 0-y;
if(distance_to_object(obj_sign_enemy)<20 and can_damage){
	can_damage = false;
	alarm[1] = kd_damage*room_speed;
	with(obj_sign_enemy){
		event_user(2);
	}
}