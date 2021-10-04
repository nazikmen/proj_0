// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ins_enemy(){
	with(instance_create(room_width/2,room_height/2,obj_enemy,0)){
		hp = round(100+((100*global.lvl)/10));
	}
}