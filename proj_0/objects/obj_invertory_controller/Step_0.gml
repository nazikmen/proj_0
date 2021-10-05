if(md){
	if(mode == "swipe"){
		y_need_sdvig+=mouse_y-pre_pos[1];
		pre_pos = [mouse_x,mouse_y];
	}
}

y_ysvig = lerp(y_ysvig,y_need_sdvig,0.3);