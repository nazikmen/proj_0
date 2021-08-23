/// @description take dm

if(distance_to_object(obj_player_sign)<20){
	with(instance_create(other.x,other.y,obj_attack_anim,depth-1)){
		path = path_add();
		path_add_point(path,obj_player_sign.x,obj_player_sign.y,10);
		path_add_point(path,other.x,other.y,10);
		path_set_closed(path,0);
		path_start(path,50,path_action_stop,0);
		image_angle = abs(90-point_direction(obj_player_sign.x,obj_player_sign.y,obj_sign_enemy.x,obj_sign_enemy.y))
		image_blend = choose(c_orange,c_red,c_purple);
	}
	path_speed = 0;
	if(path_exists(path))path_delete(path);
	x=clamp(x-clamp((other.x-x)/2,-10,10),0+sprite_width/2+25,room_width-sprite_width/2-25);
	y=clamp(y-clamp((other.y-y)/2,-10,10),0+sprite_height/2+25,room_height-sprite_height/2-25);
	hp-=irandom_range(5,10);
	if(hp<=0)instance_destroy();
	else {
		image_blend = c_red;
		image_xscale-=0.05;
		image_yscale-=0.05;
		alarm[1] = 10;
	}
}
