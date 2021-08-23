/// @description Insert description here
// You can write your code in this editor
depth = 0-y;

if(weapon_type == 0 and can_dm){
	if(weapon == 0){
		if(point_distance(x,y,obj_player_sign.x,obj_player_sign.y)<=35){
			can_dm = false;
			alarm[2] = dm_timeout*room_speed;
			with(obj_player_sign){
				event_user(1);
			}
		}
	}
}

var dst = point_distance(x,y,obj_player_sign.x,obj_player_sign.y);
if(dst<=255 and y < obj_player_sign.y+70){
	if(path_exists(path)){
		path_speed = 0;
		path_delete(path);
		path=noone;
		exit;
	}
	if(dst>30){
		x-=clamp(x-obj_player_sign.x,0-spd,spd);
		y-=clamp(y-obj_player_sign.y,0-spd,spd);
	}
}
else if(!path_exists(path)){
	event_user(1);	
}