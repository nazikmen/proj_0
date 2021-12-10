if(!md){
	md=true;
	mdx = mouse_x;
	mdy = mouse_y;
	if(mdx == clamp(mdx,x_1,x_2) and mdy == clamp(mdy,y_1,y_2)){
		if(mdx==clamp(mdx,x_1,lerp(x_1,x_2,0.2))){
			with(obj_invertory_controller){
				arr_ind_to_sort = 3;
				event_user(1);
			}
		}
		if(mdx==clamp(mdx,lerp(x_1,x_2,0.2),lerp(x_1,x_2,0.4))){
			with(obj_invertory_controller){
				arr_ind_to_sort = 4;
				event_user(1);
			}
		}
		if(mdx==clamp(mdx,lerp(x_1,x_2,0.4),lerp(x_1,x_2,0.6))){
			with(obj_invertory_controller){
				arr_ind_to_sort = 5;
				event_user(1);
			}
		}
		if(mdx==clamp(mdx,lerp(x_1,x_2,0.6),lerp(x_1,x_2,0.8))){
			with(obj_invertory_controller){
				arr_ind_to_sort = 6;
				event_user(1);
			}
		}
		instance_destroy()
	}
	else instance_destroy();
}