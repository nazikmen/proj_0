/// @description Insert description here
// You can write your code in this editor
if(!variable_instance_exists(id,"opt"))exit;
depth = 0-y;

if(weapon_type == 0 and can_dm and obj_target_dm != noone){
	if(weapon == 0){
		if(point_distance(x,y,obj_target_dm.x,obj_target_dm.y)<=35){
			can_dm = false;
			alarm[2] = dm_timeout*room_speed;
			with(obj_target_dm){
				hp-=other.damage;
				event_user(1);
			}
		}
	}
}

var dst = point_distance(x,y,obj_player_sign.x,obj_player_sign.y);
var dst_tower = point_distance(x,y,obj_tower.x,obj_tower.y);
if(dst_tower < dst){
	if(dst_tower<=255){
		if(path_exists(path)){
			path_speed = 0;
			path_delete(path);
			path=noone;
			exit;
		}
		if(dst_tower>30){
			x-=clamp(x-obj_tower.x,0-spd,spd);
			y-=clamp(y-obj_tower.y,0-spd,spd);
			exit;
		}
		else{
			obj_target_dm = obj_tower;
			exit;
		}
	}
	else if(!path_exists(path)){
		event_user(1);	
	}
}
else{
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
		else{
			obj_target_dm = obj_player_sign;
			exit;
		}
	}
	else if(!path_exists(path)){
		event_user(1);	
	}
}