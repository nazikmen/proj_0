if(md){
	if(mode == "" or mode == "click"){
		if(mouse_x != clamp(mouse_x,x_1,x_2) or mouse_y != clamp(mouse_y,y_1,y_2) or 
		(mouse_x == clamp(mouse_x,x_2-sprite_get_width(spr_close)/2,x_2) and
		mouse_y == clamp(mouse_y,y_1,y_1+sprite_get_height(spr_close)/2)))instance_destroy();
	}
	mode = "";
	md=false;
}