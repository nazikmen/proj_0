var x_1 = global.view_x+150, x_2 = global.view_x_2-150, y_1 = global.view_y+150, y_2 = global.view_y_2-150;
draw_set_alpha(0.5);
draw_rectangle_color(global.view_x,global.view_y,global.view_x_2,global.view_y_2,c_black,c_black,c_black,c_black,0);
draw_set_alpha(1);
draw_rectangle_color(x_1,y_1,x_2,y_2,c_white,c_white,c_white,c_white,0);
draw_rectangle_color(x_1,y_1,x_2,y_2,c_black,c_black,c_black,c_black,1);
