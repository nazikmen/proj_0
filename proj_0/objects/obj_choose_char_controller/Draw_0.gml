/// @description 
draw_set_font(fnt_default);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_sprite_tiled_ext(spr_white_pixel,0,global.view_x,global.view_y,500,500,c_gray,1);
draw_text_color(room_width/2,50,get_loc_text("choose_char"),c_black,c_black,c_black,c_black,1);