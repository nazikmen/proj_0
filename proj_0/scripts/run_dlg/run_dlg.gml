// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function run_dlg(_name){
	var center = get_center_coords();
	var min_d = infinity;
	with(all){
		min_d = min(depth,min_d);
	}
	with(instance_create(center[0],center[1],obj_dlg,min_d-10)){
		name = _name;
		set_scale(get_zoom_scale());
		
	}
}