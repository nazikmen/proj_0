// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_radar_spawn_chest(){
	if(round(obj_bur.y*1.1)<=global.coins){
		scr_close_dlg();
		global.coins-=round(obj_bur.y*1.1);
		with(obj_bur){
			wave_rad=0;
			wave_act=true;
		}
		bur_save();
		if(obj_bur.y>64*250){
			instance_destroy(obj_chest);
			var r = irandom_range(64*32,64*200);
			var dir = irandom(360);
			var xx  = obj_bur.x + cos(degtorad(-dir)) * r;
			var yy = obj_bur.y + sin(degtorad(-dir)) * r;
			with(instance_create(xx,yy,obj_chest)){
				coin=irandom_range(round(obj_bur.y*1.1-(obj_bur.y*0.3)),round(obj_bur.y*1.1+(obj_bur.y*0.5)));
			}
		}
	}
}