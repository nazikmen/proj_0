if(md){
	if(mode == "" or mode == "click"){
		var d = ds_inv;
		for(var i=0;i<ds_list_size(d);i++){
			if(mouse_x==clamp(mouse_x,d[|i][0]-30,d[|i][0]+30) and mouse_y = clamp(mouse_y,d[|i][1]-30+y_ysvig,d[|i][1]+30+y_ysvig)){
				//draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_green,c_green,c_green,c_green,0);
				sd("clicked on item: "+string(d[|i][2])+"\ncount: "+string(d[|i][3]))
				break;
			}
		}
	}
	mode = "";
	md=false;
}