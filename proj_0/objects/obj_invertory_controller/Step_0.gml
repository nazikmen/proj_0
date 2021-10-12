if(md){
	if(mode == "swipe"){
		y_need_sdvig=clamp(y_need_sdvig+mouse_y-pre_pos[1],clamp((0-90*line_cnt)+(90*((global.view_y_2-100-st_p[1])/90)),-infinity,0),0);
		pre_pos = [mouse_x,mouse_y];
	}
}

y_ysvig = lerp(y_ysvig,y_need_sdvig,0.3);