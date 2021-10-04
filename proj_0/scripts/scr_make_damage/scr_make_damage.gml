// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_make_damage(dmg,mnoshitel){
	with(obj_enemy){
		hp = clamp(round(hp-(dmg*mnoshitel)),0,infinity);
		event_user(15);
	}
	
}