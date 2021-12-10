/// @description Insert description here
// You can write your code in this editor
draw_circle_color(x+x_plus,y+y_plus,radius,c_black,c_black,0);
draw_circle_color(x,y,5,c_white,c_black,0);

for(var i=0;i<array_length(lapa_points);i++){
	var l = lapa_points[i]
	var p1 = l[0];
	var p2 = l[1];
	
	draw_line_width_color(p1[0]+x_plus,p1[1]+y_plus,p2[0],p2[1],5,c_white,c_white);
	var t_pos = [lerp(p1[0]+x_plus,p2[0],0.5),lerp(p1[1]+y_plus,p2[1],0.5)];
	draw_set_color(c_red);
	draw_text(t_pos[0],t_pos[1],string(round(point_distance(p1[0]+x_plus,p1[1]+y_plus,p2[0],p2[1]))));
	draw_set_color(c_white);
}