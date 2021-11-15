// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_open_dlg_upgrade_depth(){//kislorod
	var p = get_center_coords();
	with(instance_create(p[0],p[1],obj_dlg,-200)){
		sprite_index = spr_panel_vertical;
		image_xscale=0.5;
		image_yscale=0.5;
		
		with(cls){
			image_xscale=0.5;
			image_yscale=0.5;
			def_scale=0.5;
		}
		name = "dlg_upgrade_depth"
		
	}
}