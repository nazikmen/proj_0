if(md){
	md=false;
	if(md_mode == "click" and obj_bur.zoom){
		with(obj_bur_interface_btn){
			if(collision_point(mouse_x,mouse_y,id,1,0)){
				event_user(15);
			}
		}
	}
	md_mode = "click";
}