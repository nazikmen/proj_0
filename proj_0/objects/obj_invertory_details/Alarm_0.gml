/// @description list or swipe

if(point_distance(mouse_x,mouse_y,pre_pos[0],pre_pos[1])>10 and md){
	mode = "swipe";
}
else mode = "click";