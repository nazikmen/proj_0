if(md){
	with(obj_bur){
		if(zoom){
			cam_sdvig[0]=clamp(cam_sdvig[0]+round(other.dmdx-display_mouse_get_x())/10,-15,15);
			other.dmdx=round(display_mouse_get_x());
			cam_sdvig[1]=clamp(cam_sdvig[1]+round(other.dmdy-display_mouse_get_y())/10,-15,15);
			other.dmdy=round(display_mouse_get_y());
		}
	}
}