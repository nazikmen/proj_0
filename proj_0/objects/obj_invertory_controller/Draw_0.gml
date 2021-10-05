draw_rectangle_color(global.view_x,global.view_y,global.view_x_2,global.view_y_2,c_white,c_white,c_white,c_white,0);
var d = ds_inv;
for(var i=0;i<ds_list_size(d);i++){
	draw_set_alpha(0.5);
	draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_gray,c_gray,c_gray,c_gray,0);
	if(mouse_x==clamp(mouse_x,d[|i][0]-30,d[|i][0]+30) and mouse_y = clamp(mouse_y,d[|i][1]-30+y_ysvig,d[|i][1]+30+y_ysvig)){
		draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_green,c_green,c_green,c_green,0);
	}
	draw_set_alpha(1);
	draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	draw_text_ext_transformed_color(d[|i][0],d[|i][1]+30+y_ysvig,string(d[|i][3]),10,60,0.5,0.5,0,c_black,c_black,c_black,c_black,1);
	draw_sprite(spr_weapons,d[|i][2],d[|i][0],d[|i][1]+y_ysvig);
	
}