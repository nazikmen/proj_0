/// @description 
instance_destroy(scr);
with(obj_btn_dlg)if(depth<=other.depth)instance_destroy();
with(obj_text_dlg)if(depth<=other.depth)instance_destroy();
with(obj_spr_dlg)if(depth<=other.depth)instance_destroy();
with(obj_close_dlg)if(depth<=other.depth)instance_destroy(obj_close_dlg);

for(var i=0;i<array_length(arr_objects);i++){
	with(arr_objects[i])instance_destroy();
}