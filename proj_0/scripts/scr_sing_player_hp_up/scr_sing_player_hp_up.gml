// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sing_player_hp_up(){
	with(obj_player_sign){
		if(coins >= round(max_hp/2.8)){
				coins-=round(max_hp/2.8);
				max_hp+=20;
				hp = max_hp;
		}
	}
}