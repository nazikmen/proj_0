//draw_self();

if(is_array(pos_md)){
	//var loc_mouse = [mouse_x-x,mouse_y-y]
	draw_set_alpha(0.5);
	draw_circle_color(x+pos_md[0],y+pos_md[1],50,c_white,c_white,0);	
	draw_circle_color(clamp(mouse_x,x+pos_md[0]-50,x+pos_md[0]+50),clamp(mouse_y,y+pos_md[1]-50,y+pos_md[1]+50),25,c_gray,c_gray,0);
	draw_set_alpha(1);
}

//draw_text(x,y,"view_pos: ["+string(camera_get_view_x(view_camera[0]))+","+string(camera_get_view_y(view_camera[0]))+"]\nx,y: ["+string(x)+","+string(y)+"]")