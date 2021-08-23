/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
draw_set_alpha(0.5);
draw_rectangle(-1000,-1000,global.game_width,global.game_height,0);
draw_set_color(c_gray);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(room_width/2,global.view_y+65,"Волна: "+string(wv));