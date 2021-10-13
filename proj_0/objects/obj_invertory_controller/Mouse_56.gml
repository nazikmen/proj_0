if(md){
	if(mode == "" or mode == "click"){
		
		
		var d = ds_inv;
		var cl_y = [st_p[1]-60,global.view_y_2-200+60];
		for(var i=0;i<ds_list_size(d);i++){
			if(mouse_x==clamp(mouse_x,d[|i][0]-30,d[|i][0]+30) and mouse_y = clamp(mouse_y,d[|i][1]-30+y_ysvig,d[|i][1]+30+y_ysvig)){
				//draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_green,c_green,c_green,c_green,0);
				if(mouse_y == clamp(mouse_y,cl_y[0],cl_y[1])){
					if(mdx==clamp(mdx,d[|i][0]-30,d[|i][0]+30) and mdy = clamp(mdy,d[|i][1]-30+y_ysvig,d[|i][1]+30+y_ysvig))
					//sd("clicked on item: "+string(d[|i][2])+"\ncount: "+string(d[|i][3]));
					with(instance_create(x,y,obj_invertory_details,depth-1)){
						spr_ind=string(d[|i][2]);
						item_cnt = string(d[|i][3]);
					}
					break;
				}
			}
		}
	}
	mode = "";
	md=false;
}