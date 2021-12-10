// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_make_damage(dmg,mnoshitel){
	with(obj_enemy){
		hp = clamp(round(hp-(dmg*mnoshitel)),0,infinity);
		event_user(15);
		with(instance_create(irandom_range(x-50,x+50),irandom_range(y-50,y),obj_dmg_drop))dmg_draw=dmg*mnoshitel;
	}
	
}