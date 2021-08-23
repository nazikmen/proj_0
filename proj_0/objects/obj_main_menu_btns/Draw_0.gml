/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_set_font(fnt_default);
//draw_set_valign(fa_center);
//draw_set_halign(fa_center);
draw_set_color(c_black);

if(loc_text_key = "")exit;
switch text 
{
case "PLAY":
draw_text_transformed(x,y,get_loc_text(loc_text_key),image_xscale,image_yscale,0);
break;

case "OPTIONS":
draw_text_transformed(x,y,get_loc_text(loc_text_key),image_xscale,image_yscale,0);
break;

case "EXIT":
draw_text_transformed(x,y,get_loc_text(loc_text_key),image_xscale,image_yscale,0);
break;

}