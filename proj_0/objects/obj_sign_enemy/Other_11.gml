/// @description path_start
image_blend = c_white;
if(enemy_type == 0){
	
	path = path_add();
	path_add_point(path,x,y,10);
	path_add_point(path,obj_tower.x,obj_tower.y,10);
	path_set_closed(path,0);
	path_start(path,10*spd,path_action_stop,0);
}
