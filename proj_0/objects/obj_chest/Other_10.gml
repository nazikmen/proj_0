/// @description Insert description here
// You can write your code in this editor
if(coin>0){
	with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
		dmg_draw = other.coin;
	}
	global.coins+=coin;
	coin=0;
	alarm[0]=10;
}