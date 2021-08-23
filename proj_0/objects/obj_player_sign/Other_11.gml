/// @description take_dm
if(hp<=0){
	room_goto(rm_main_menu);
	exit;
}
image_blend = c_red;
alarm[2] = 10;

with(instance_create(other.x,other.y,obj_attack_anim,depth-1)){
		path = path_add();
		path_add_point(path,obj_sign_enemy.x,obj_sign_enemy.y,10);
		path_add_point(path,other.x,other.y,10);
		path_set_closed(path,0);
		path_start(path,50,path_action_stop,0);
		var angl = point_direction(obj_player_sign.x,obj_player_sign.y,obj_sign_enemy.x,obj_sign_enemy.y)
		image_angle = abs(angl+90);
		image_blend = c_black;
	}