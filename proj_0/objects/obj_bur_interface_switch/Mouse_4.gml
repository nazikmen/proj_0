with(obj_bur){
	zoom=!zoom;
	with(btn_radar)mt_enable = !other.zoom;
	
	if(zoom)get_dialog("bur_interface");
	else instance_destroy(obj_bur_interface_btn);
}