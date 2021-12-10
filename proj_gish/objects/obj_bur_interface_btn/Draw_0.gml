
draw_line_color(x,y,obj_bur.x,obj_bur.y,c_red,c_green);
with(obj_bur)draw_self();
if(sprite_exists(sprite_index))draw_self();
if(btn_text!=""){
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(x,y,string(btn_text),0,300,image_xscale,image_yscale,image_angle,c_white,c_white,c_white,c_white,1);
}