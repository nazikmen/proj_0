// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ins_enemy(){
	with(instance_create(room_width/2,room_height/2,obj_enemy,0)){
		hp = ceil(100+power(global.lvl-1,clamp(global.lvl/10,0,5)));
		if(global.enemy_killed_session%10==0 and global.enemy_killed_session!=0){
			hp=hp*10;
			is_boss=true;
		}
		start_hp = hp;
	}
}