draw_rectangle_color(global.view_x,global.view_y,global.view_x_2,global.view_y_2,c_white,c_white,c_white,c_white,0);
var d = ds_inv;
var ri=shader_get_uniform(shd_rectCutOutSmooth,"v_rect");
var bi=shader_get_uniform(shd_rectCutOutSmooth,"f_border");
shader_set(shd_rectCutOutSmooth);
shader_set_uniform_f(ri,global.view_x-200,st_p[1]-100,global.view_x_2+200,global.view_y_2-200+100);
shader_set_uniform_f(bi,80);
var cl_y = [st_p[1]-60,global.view_y_2-200+60];
for(var i=0;i<ds_list_size(d);i++){
	draw_set_alpha(0.5);
	var c = c_gray;
	if(d[|i][3]==0)c=c_black;
	draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c,c,c,c,0);
	if(d[|i][3]!=0 and mouse_x==clamp(mouse_x,d[|i][0]-30,d[|i][0]+30) and mouse_y = clamp(mouse_y,d[|i][1]-30+y_ysvig,d[|i][1]+30+y_ysvig)){
		if(mouse_y == clamp(mouse_y,cl_y[0],cl_y[1]))
		draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_green,c_green,c_green,c_green,0);
	}
	draw_set_alpha(1);
	draw_rectangle_color(d[|i][0]-30,d[|i][1]-30+y_ysvig,d[|i][0]+30,d[|i][1]+30+y_ysvig,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	if(d[|i][3]!=0 and d[|i][3]!=1){
		c=c_white;
		draw_text_ext_transformed_color(d[|i][0],d[|i][1]+30+y_ysvig,string(d[|i][3]),10,60,0.5,0.5,0,c_black,c_black,c_black,c_black,1);
	}
	
	draw_sprite_ext(spr_weapons,d[|i][2],d[|i][0],d[|i][1]+y_ysvig,1,1,0,c,1);
	
}
shader_reset();

var sm = smeschenie_sortirovki;
var dx = global.view_x+sprite_get_width(spr_back)/2
draw_sprite(spr_back,0,dx,global.view_y_2-sprite_get_height(spr_back)/2);
dx = dx+sprite_get_width(spr_back)/2+sprite_get_width(spr_sort_cnt)/2;
draw_sprite(spr_sort_cnt,ind_sort_cnt,dx,global.view_y_2-sprite_get_height(spr_sort_cnt)/2-smeschenie_sortirovki[0]);
dx = dx+sprite_get_width(spr_sort_cnt)/2+sprite_get_width(spr_sort_damage)/2;
draw_sprite(spr_sort_damage,ind_sort_dmg,dx,global.view_y_2-sprite_get_height(spr_sort_damage)/2-smeschenie_sortirovki[1]);
dx = dx+sprite_get_width(spr_sort_damage)/2+sprite_get_width(spr_sort_rare)/2;
draw_sprite(spr_sort_rare,ind_sort_rare,dx,global.view_y_2-sprite_get_height(spr_sort_rare)/2-smeschenie_sortirovki[2]);