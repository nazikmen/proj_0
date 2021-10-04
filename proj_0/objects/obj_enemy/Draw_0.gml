draw_self();

draw_set_valign(fa_center);
draw_text_ext_color(room_width/2,global.view_y+30,"hp: "+string(hp),10,1000,c_black,c_black,c_black,c_black,1);
draw_text_ext_color(room_width/2,global.view_y+70,"lvl: "+string(global.lvl),10,1000,c_black,c_black,c_black,c_black,1);
draw_set_valign(fa_left);
draw_text_ext_color(global.view_x+20,global.view_y+30,string(global.coins),10,1000,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_text_ext_color(global.view_x+20,global.view_y+70,string(global.s_coins),10,1000,c_silver,c_silver,c_silver,c_silver,1);