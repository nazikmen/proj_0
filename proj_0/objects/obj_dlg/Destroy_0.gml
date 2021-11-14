/// @description Insert description here
instance_destroy(scr);
with(obj_btn_dlg)if(depth<=other.depth)instance_destroy();
with(obj_close_dlg)if(depth<=other.depth)instance_destroy(obj_close_dlg);
//instance_destroy(rmk);