
draw_set_alpha(0.5);
draw_rectangle_color(global.view_x,global.view_y,global.view_x_2,global.view_y_2,c_black,c_black,c_black,c_black,0);
draw_set_alpha(1);
draw_rectangle_color(x_1,y_1,x_2,y_2,c_white,c_white,c_white,c_white,0);
draw_rectangle_color(x_1,y_1,x_2,y_2,c_black,c_black,c_black,c_black,1);
draw_set_halign(fa_left);
draw_text_ext_transformed_color(x_1+10,y_1+100,get_loc_text("lorem50"),
40,(x_2-x_1-20)/0.4,0.4,0.4,0,c_black,c_black,c_black,c_black,1);
//draw_set_halign(fa_center);
draw_set_valign(fa_center);
var sc=sprite_get_height(spr_weapons)/(100/2);
var c = c_white;
if(item_cnt==0)c=c_dkgray;
draw_sprite_ext(spr_weapons,spr_ind,x_1+(sprite_get_width(spr_weapons)*sc)/2+10,y_1+60,sc,sc,0,c,1);
if(item_cnt!=0 and item_cnt!=1)draw_text_color(x_1+(sprite_get_width(spr_weapons)*sc)+20,y_1+70,string(item_cnt)+get_loc_text("text_cnt"),c_black,c_black,c_black,c_black,1)
draw_set_halign(fa_center);
draw_sprite(spr_close,0,x_2,y_1);