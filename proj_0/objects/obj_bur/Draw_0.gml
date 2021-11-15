//draw_circle_color(x,y,32,c_red,c_red,0);
//draw_set_halign(fa_center)
if(wave_act){
	draw_sprite_ext(spr_wave,0,x,y,clamp(wave_rad,0,5),clamp(wave_rad,0,5),0,c_green,0.7);
	draw_sprite_ext(spr_wave,0,x,y,clamp(wave_rad-0.5,0,5),clamp(wave_rad-0.5,0,5),0,c_green,0.7);
	draw_sprite_ext(spr_wave,0,x,y,clamp(wave_rad-1,0,5),clamp(wave_rad-1,0,5),0,c_green,0.7);
	wave_rad+=0.04;
	if(wave_rad>3)with(obj_chest)finded=true;
	if(wave_rad>=7){
		wave_act=false
		wave_rad=0;
	}
}
if(sprite_exists(sprite_index))draw_self();
draw_sprite_ext(spr_bur_drill,drill_frame,x,y,image_xscale,image_yscale,image_angle,c_white,1);
var dist = point_distance(x,y,x,kislorod*64);
if(dist<91*64){//за 100 блоков до границы
	var ind = 0;
	if(dist == clamp(dist,50*64,91*64))ind = 0;
	if(dist == clamp(dist,20*64,50*64))ind = 1;
	if(dist == clamp(dist,0,20*64))ind = 2;
	draw_sprite_ext(spr_kislorod_alarm,ind,x+32,y-32,1,1,0,c_white,kislorod_alpha);
	if(kislorod_napr==0){
		kislorod_alpha+=0.03;
		if(kislorod_alpha>=1)kislorod_napr=1;
	}
	else{
		kislorod_alpha-=0.03;
		if(kislorod_alpha<=0)kislorod_napr=0;
	}
}



var ri=shader_get_uniform(shd_rectCutOutSmooth,"v_rect");
var bi=shader_get_uniform(shd_rectCutOutSmooth,"f_border");
shader_set(shd_rectCutOutSmooth);
shader_set_uniform_f(ri,x-1000,64*9,x+1000,y+1000);
shader_set_uniform_f(bi,80);
draw_sprite_ext(spr_dark,0,x,y,1.2,1.2,0,c_white,1);
shader_reset();


//kislorod_bar
if(zoom)pos_kislorod_bar=lerp(pos_kislorod_bar,-64,0.2);
else pos_kislorod_bar=lerp(pos_kislorod_bar,0,0.2);
var p = get_view_cam();
draw_sprite_ext(spr_kislorod_bar,0,p[0]+pos_kislorod_bar,p[3]-164,1,1,0,c_white,1);
var proc = 1-clamp(y/(kislorod*64+64*15),0,1);
var ppos = lerp(p[3]-167-16,p[3]-164-190,proc)
var ri=shader_get_uniform(shd_rectCutOutSmooth,"v_rect");
var bi=shader_get_uniform(shd_rectCutOutSmooth,"f_border");
shader_set(shd_rectCutOutSmooth);
shader_set_uniform_f(ri,x-1000,ppos,x+1000,y+1000);
shader_set_uniform_f(bi,5);
draw_rectangle_color(p[0]+5+pos_kislorod_bar,p[3]-167,p[0]+60+pos_kislorod_bar,p[3]-164-190,c_green,c_green,c_green,c_green,0)
draw_rectangle_color(p[0]+5+pos_kislorod_bar,p[3]-167,p[0]+60+pos_kislorod_bar,p[3]-164-110,c_green,c_green,c_red,c_red,0)
shader_reset();
draw_sprite_ext(spr_kislorod_bar,1,p[0]+pos_kislorod_bar,p[3]-164,1,1,0,c_white,1);
//



