/// @description Insert description here
// You can write your code in this editor
if(sprite_exists(sprite_index))draw_self();
if(btn_text != ""){
	draw_text_transformed_color(x,y,btn_text,image_xscale,image_xscale,0,c_black,c_black,c_black,c_black,1);
}

if(loc_text_key != ""){
	draw_text_transformed_color(x,y,get_loc_text(loc_text_key),image_xscale,image_xscale,0,c_black,c_black,c_black,c_black,1);
}