/// @description switch mode
if(point_distance(dmdx,dmdy,display_mouse_get_x(),display_mouse_get_y())>2)md_mode = "swipe";
else if(collision_point(mouse_x,mouse_y,obj_bur_interface_btn,1,1)){
	md_mode = "click";
}
else md_mode = "swipe";