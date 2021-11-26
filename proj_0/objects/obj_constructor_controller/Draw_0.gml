draw_self()
draw_rectangle_color(global.view_x,global.view_y,global.view_x_2,global.view_y+100,c_gray,c_gray,c_gray,c_gray,0);
draw_set_font(fnt_ui);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_text(288,global.view_y+50,string(name_arr[num_dlg]));

if(md){
	for(var i=0;i<array_length(name_arr);i++){
		var c = c_grey;
		if(mouse_y=clamp(mouse_y,global.view_y+100+100*i,global.view_y+200+100*i))c=c_green;
		draw_rectangle_color(global.view_x,global.view_y+100+100*i,global.view_x_2,global.view_y+200+100*i,c,c,c,c,0);
		draw_text(288,global.view_y+150+100*i,string(name_arr[i]))
	}
}