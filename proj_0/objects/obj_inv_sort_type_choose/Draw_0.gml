draw_rectangle_color(x_1,y_1,x_2,y_2,c_white,c_white,c_white,c_white,0);
draw_set_color(c_black);
if(mouse_x==clamp(mouse_x,x_1,lerp(x_1,x_2,0.2)))draw_text(lerp(x_1,x_2,0.2),y-10,"1");
else draw_text(lerp(x_1,x_2,0.2),y,"1");
if(mouse_x==clamp(mouse_x,lerp(x_1,x_2,0.2),lerp(x_1,x_2,0.4)))draw_text(lerp(x_1,x_2,0.4),y-10,"2");
else draw_text(lerp(x_1,x_2,0.4),y,"2");
if(mouse_x==clamp(mouse_x,lerp(x_1,x_2,0.4),lerp(x_1,x_2,0.6)))draw_text(lerp(x_1,x_2,0.6),y-10,"3");
else draw_text(lerp(x_1,x_2,0.6),y,"3");
if(mouse_x==clamp(mouse_x,lerp(x_1,x_2,0.6),lerp(x_1,x_2,0.8)))draw_text(lerp(x_1,x_2,0.8),y-10,"4");
else draw_text(lerp(x_1,x_2,0.8),y,"4");
draw_set_color(c_white);


draw_rectangle_color(x_1,y_1,x_2,y_2,c_black,c_black,c_black,c_black,1);