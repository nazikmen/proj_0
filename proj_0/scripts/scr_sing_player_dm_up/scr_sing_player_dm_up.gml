// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sing_player_dm_up(){
	with(obj_player_sign){
		if(coins >= round(damage*1.3)){
				coins-=round(damage*1.3);
				damage+=5;
		}
	}
	if(obj_player_sign.coins<round(obj_player_sign.damage*1.3))image_blend = c_red;
}