/// @description Insert description here
// You can write your code in this editor

if(variable_instance_exists(id,"draw_pos_mouse")){
	if(draw_pos_mouse){
		draw_text(mouse_x-20,mouse_y-20,"x: "+string(mouse_x)+"\ny: "+string(mouse_y));	
	}
}