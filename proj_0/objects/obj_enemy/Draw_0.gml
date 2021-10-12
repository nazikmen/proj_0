draw_self();

draw_set_valign(fa_center);
draw_text_ext_color(room_width/2,global.view_y+30,"hp: "+short_num(hp),10,1000,c_black,c_black,c_black,c_black,1);
draw_text_ext_color(room_width/2,global.view_y+70,"lvl: "+string(global.lvl),10,1000,c_black,c_black,c_black,c_black,1);
draw_set_valign(fa_left);
draw_text_ext_color(global.view_x+20,global.view_y+30,string(global.coins),10,1000,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_text_ext_color(global.view_x+20,global.view_y+70,string(global.s_coins),10,1000,c_silver,c_silver,c_silver,c_silver,1);
draw_line_width_color(bbox_left-3,bbox_top-15,bbox_right+3,bbox_top-15,20,c_dkgray,c_dkgray);
draw_line_width_color(bbox_left+2,bbox_top-15,bbox_right-2,bbox_top-15,13,c_gray,c_gray);
draw_line_width_color(bbox_left+2,bbox_top-15,lerp(bbox_left+2,bbox_right-2,clamp(hp/start_hp,0,1)),bbox_top-15,13,c_red,c_red);