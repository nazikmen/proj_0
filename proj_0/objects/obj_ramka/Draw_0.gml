/// @description Insert description here
// You can write your code in this editor
var spr = spr_gui_frame_strip;
var w = sprite_get_width(spr);
var h = sprite_get_height(spr);

if(par_obj==noone){
	
	var x1=0;
	var x2=global.game_width;
	var y1=0;
	var y2=global.game_height;
	if(myspr != noone){
		draw_sprite(myspr,0,global.view_x,global.view_y);
		exit;
	}
	var ri=shader_get_uniform(shd_rectCutOutSmooth,"v_rect");
	var bi=shader_get_uniform(shd_rectCutOutSmooth,"f_border");
	var ws = global.game_width;
	var hs = global.game_height;
	var surf = surface_create(ws,hs);
	surface_set_target(surf);
	
	
	shader_set(shd_rectCutOutSmooth);
	shader_set_uniform_f(ri,x1+h/2,y1-100,x2-h/2,y2+100);
	shader_set_uniform_f(bi,2);
	var cnt = point_distance(x1,0,x2,0)/w+1;
	for(var hor = x1+w/2;hor<cnt*w;hor+=w){
		draw_sprite(spr,1,hor,y1+h/2);
	}
	for(var hor = x1+w/2;hor<cnt*w;hor+=w){
		draw_sprite(spr,7,hor,y2-h/2);
	}
	shader_reset();
	
	shader_set(shd_rectCutOutSmooth);
	shader_set_uniform_f(ri,x1-100,y1+h/2,x2+100,y2-h/2);
	shader_set_uniform_f(bi,2);
	var cnt = point_distance(0,y1,0,y2)/h+1;
	for(var ver = y1+h/2;ver<cnt*h;ver+=h){
		draw_sprite(spr,5,x2-w/2,ver);
	}
	for(var ver = y1+h/2;ver<cnt*h;ver+=h){
		draw_sprite(spr,3,x1+w/2,ver);
	}
	shader_reset();
	draw_sprite(spr,0,x1+w/2,y1+h/2)
	draw_sprite(spr,2,x2-w/2,y1+h/2)
	draw_sprite(spr,8,x2-w/2,y2-h/2)
	draw_sprite(spr,6,x1+w/2,y2-h/2)
	surface_reset_target();
	myspr = sprite_create_from_surface(surf,0,0,global.game_width,global.game_height,0,0,0,0);
	//sprite_save(myspr,0,"fmmm.png")
	surface_free(surf);
}
else if(sprite_exists(par_obj.sprite_index) and draw_mode == ""){
	var x1=0;
	var x2=par_obj.sprite_width+w;
	var y1=0;
	var y2=par_obj.sprite_height+h;
	depth = par_obj.depth-1;
	if(myspr != noone){
		draw_sprite(other.myspr,0,par_obj.bbox_left-w/2,par_obj.bbox_top-h/2);
		exit;
	}
	var ri=shader_get_uniform(shd_rectCutOutSmooth,"v_rect");
	var bi=shader_get_uniform(shd_rectCutOutSmooth,"f_border");
	var ws = par_obj.sprite_width+w;
	var hs = par_obj.sprite_height+h;
	var surf = surface_create(ws,hs);
	surface_set_target(surf);
	
	
	shader_set(shd_rectCutOutSmooth);
	shader_set_uniform_f(ri,x1+h/2,y1-100,x2-h/2,y2+100);
	shader_set_uniform_f(bi,2);
	var cnt = point_distance(x1,0,x2,0)/w+1;
	for(var hor = x1+w/2;hor<cnt*w;hor+=w){
		draw_sprite(spr,1,hor,y1+h/2);
	}
	for(var hor = x1+w/2;hor<cnt*w;hor+=w){
		draw_sprite(spr,7,hor,y2-h/2);
	}
	shader_reset();
	
	shader_set(shd_rectCutOutSmooth);
	shader_set_uniform_f(ri,x1-100,y1+h/2,x2+100,y2-h/2);
	shader_set_uniform_f(bi,2);
	var cnt = point_distance(0,y1,0,y2)/h+1;
	for(var ver = y1+h/2;ver<cnt*h;ver+=h){
		draw_sprite(spr,5,x2-w/2,ver);
	}
	for(var ver = y1+h/2;ver<cnt*h;ver+=h){
		draw_sprite(spr,3,x1+w/2,ver);
	}
	shader_reset();
	draw_sprite(spr,0,x1+w/2,y1+h/2)
	draw_sprite(spr,2,x2-w/2,y1+h/2)
	draw_sprite(spr,8,x2-w/2,y2-h/2)
	draw_sprite(spr,6,x1+w/2,y2-h/2)
	surface_reset_target();
	myspr = sprite_create_from_surface(surf,0,0,ws,hs,0,0,0,0);
	sprite_save(myspr,0,"fmmm.png")
	surface_free(surf);
}
else draw_mode = "";