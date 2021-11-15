draw_self();

if(text!=""){
	var str = get_loc_text(string(text));
	if(!loc_text)str = string(text);
	draw_set_font(fnt_ui);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(x,y,str,sprite_height,sprite_width,image_xscale,image_yscale,image_angle,text_color,text_color,text_color,text_color,image_alpha)
}