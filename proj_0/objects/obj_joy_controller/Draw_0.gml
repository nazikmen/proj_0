/// @description Insert description here
// You can write your code in this editor
if(md){
	draw_set_alpha(0.5);
	//draw_line_width_color(press_point[0],press_point[1],mouse_x,mouse_y,3,c_red,c_red);
	draw_circle_color(press_point[0],press_point[1],50,c_white,c_white,0);
	draw_circle_color(clamp(mouse_x,press_point[0]-50,press_point[0]+50),clamp(mouse_y,press_point[1]-50,press_point[1]+50),30,c_white,c_white,0);
	draw_set_alpha(1);
}