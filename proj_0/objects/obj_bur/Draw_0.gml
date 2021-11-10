//draw_circle_color(x,y,32,c_red,c_red,0);
//draw_set_halign(fa_center)
if(sprite_exists(sprite_index))draw_self();
var ri=shader_get_uniform(shd_rectCutOutSmooth,"v_rect");
var bi=shader_get_uniform(shd_rectCutOutSmooth,"f_border");
shader_set(shd_rectCutOutSmooth);
shader_set_uniform_f(ri,x-1000,64*9,x+1000,y+1000);
shader_set_uniform_f(bi,80);
draw_sprite(spr_dark,0,x,y);
shader_reset();