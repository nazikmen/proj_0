draw_self();

if(text!=""){
	var str = get_loc_text(string(text));
	if(!loc_text)str = string(text);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(x,y,str,50,sprite_width,image_xscale,image_yscale,image_angle,c_black,c_black,c_black,c_black,image_alpha)
}