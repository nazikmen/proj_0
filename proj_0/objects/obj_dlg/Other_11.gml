/// @description load
with(instance_create(x,y,obj_screenlock)){
	other.scr = id;
	par_obj = other.id;
	ue = 0;
	other.depth = depth-1;
}
cls = instance_create(x,y,obj_close_dlg,depth-2);
with(cls)set_scale(get_zoom_scale());

get_dialog(name);

if(def_pos_close){
	with(cls){
		x = other.bbox_right;
		y = other.bbox_top;
	}
}