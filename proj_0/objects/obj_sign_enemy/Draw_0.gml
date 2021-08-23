/// @description Insert description here
// You can write your code in this editor
if(!variable_instance_exists(id,"opt"))exit;
draw_self();
draw_line_width_color(bbox_left,bbox_top-3,bbox_right,bbox_top-3,6,c_black,c_black);
draw_line_width_color(bbox_left,bbox_top-3,bbox_left+((bbox_right-bbox_left)/max_hp*clamp(hp,0,infinity)),bbox_top-3,4,c_red,c_red);
