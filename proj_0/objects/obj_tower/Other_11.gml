/// @description take dm
if(hp >= 80)image_index=0;
else if(hp >= 60)image_index=1;
else if(hp >= 40)image_index=2;
else if(hp >= 20)image_index=3;
else if(hp >= 10) image_index=4;
else if(hp <= 0) room_goto(rm_main_menu);

var oth = other;
with(instance_create(other.x,other.y,obj_attack_anim,depth-1)){
		path = path_add();
		path_add_point(path,obj_sign_enemy.x,obj_sign_enemy.y,10);
		path_add_point(path,other.x,other.y,10);
		path_set_closed(path,0);
		path_start(path,50,path_action_stop,0);
		var angl = point_direction(other.x,other.y,oth.x,oth.y)
		image_angle = abs(angl+90);
		image_blend = c_black;
	}