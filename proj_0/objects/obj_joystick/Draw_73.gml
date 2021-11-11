if(md){
	var r = clamp(point_distance(mdx,mdy,mouse_x,mouse_y),10,50);
	var dir = point_direction(mdx,mdy,mouse_x,mouse_y);
	var xx  = mdx + cos(degtorad(-dir)) * r;
	var yy = mdy + sin(degtorad(-dir)) * r;
	var sz = [0.5,0.5,0.5,0.5];
	if(dir == clamp(dir,45,90+44))sz[3]=0.6;
	if(dir == clamp(dir,0,44) or dir == clamp(dir,360-45,360))sz[0]=0.6;
	if(dir == clamp(dir,90+45,180+44))sz[1]=0.6;
	if(dir == clamp(dir,180+45,360-44))sz[2]=0.6;
	draw_sprite_ext(spr_joystick,0,mdx+50,mdy,sz[0],sz[0],0,c_white,0.5);
	draw_sprite_ext(spr_joystick,0,mdx-50,mdy,sz[1],sz[1],180,c_white,0.5);
	draw_sprite_ext(spr_joystick,0,mdx,mdy+50,sz[2],sz[2],360-90,c_white,0.5);
	draw_sprite_ext(spr_joystick,0,mdx,mdy-50,sz[3],sz[3],90,c_white,0.5);
	
	draw_set_alpha(0.5);
	draw_circle_color(xx,yy,15,c_white,c_white,0);
	draw_set_alpha(1);
	if(r>20)with(obj_bur){
		if(x != need_x or y != need_y)exit;

		if(dir == clamp(dir,45,90+44)){//w
			perehod_na_new_grid(need_x,need_y-64);
			if(check_can_move(need_x,need_y-64)){
				need_y-=64;
				image_angle=90;
				finished_step=false;
				exit;
			}
		}
		if(dir == clamp(dir,180+45,360-44)){//s
			perehod_na_new_grid(need_x,need_y+64);
			if(check_can_move(need_x,need_y+64)){
				need_y+=64;
				image_angle=360-90;
				finished_step=false;
				exit;
			}
		}
		if(dir == clamp(dir,90+45,180+44)){//a
			perehod_na_new_grid(need_x-64,need_y);
			if(check_can_move(need_x-64,need_y)){
				need_x-=64;
				image_angle=180;
				finished_step=false;
				exit;
			}
		}
		if(dir == clamp(dir,0,44) or dir == clamp(dir,360-45,359)){//d
			perehod_na_new_grid(need_x+64,need_y);
			if(check_can_move(need_x+64,need_y)){
				need_x+=64;
				image_angle=0;
				finished_step=false;
				exit;
			}
		}
	}
}