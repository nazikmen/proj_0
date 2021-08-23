/// @description Insert description here
// You can write your code in this editor
depth = 0-y;
if(distance_to_object(obj_sign_enemy)<20 and can_damage){
	can_damage = false;
	alarm[1] = kd_damage*room_speed;
	var dst = ds_list_create();
	with(obj_sign_enemy){
		ds_list_add(dst,point_distance(other.x,other.y,x,y));
	}
	ds_list_sort(dst,1);
	sd(dst[|0])
	with(obj_sign_enemy){
		if(point_distance(other.x,other.y,x,y) <= dst[|0])event_user(2);
	}
}