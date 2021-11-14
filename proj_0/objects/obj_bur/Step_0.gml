//x=lerp(x,need_x,0.2);
//y=lerp(y,need_y,0.2);
if(instance_exists(obj_dlg))exit;
if(!finished_step){
	//alarm[0]=1;
	var pre_pos = [x,y];
	mp_linear_step(need_x,need_y,spd,false);
	with(obj_joystick){
		x-=pre_pos[0]-other.x;
		mdx-=pre_pos[0]-other.x;
		y-=pre_pos[1]-other.y;
		mdy-=pre_pos[1]-other.y;
	}
	with(btn_radar){
		x-=pre_pos[0]-other.x;
		y-=pre_pos[1]-other.y;
	}
	
	
	if(x == need_x and y == need_y){
		
		x-=x%64;
		y-=y%64;
		
		
		var p = get_grid_pos(x,y);
		set_block_destroyed(p);
		
		if(place_meeting(x,y,obj_chest)){
			with(obj_chest)if(point_distance(x,y,other.x,other.y)<100){
				event_user(0);
			}
		}
		with(obj_joystick){
			x=other.x;
			y=other.y;
		}
		
		finished_step=true;
	}
}

var cam=view_get_camera(view_camera[0]);
if(!zoom){
	var w = camera_get_view_width(cam);
	var h = camera_get_view_height(cam);
	var lerp_w = lerp(w,global.game_width,0.1);
	var lerp_h = lerp(h,global.game_height,0.1);
	if(!zoomed){
		cam_sdvig=[lerp(cam_sdvig[0],0,0.1),lerp(cam_sdvig[1],0,0.1)];
		var cpos = get_view_cam();
		var lerp_x = lerp(cpos[0]+cam_sdvig[0],x-(global.game_width/2)+cam_sdvig[0],0.1);
		var lerp_y = lerp(cpos[1]+cam_sdvig[1],y-(global.game_height/2)+cam_sdvig[1],0.1);
		with(btn_radar){
			x = lerp(x,cpos[0]+64,0.1);
			y = lerp(y,cpos[3]-64,0.1);
			image_xscale=lerp(image_xscale,1,0.1);
			image_yscale=image_xscale;
		}
		with(obj_bur_interface_switch){
			//x = lerp(x,lerp_x-64+lerp_w,0.1);
			//y = lerp(y,lerp_y-64+lerp_h,0.1);
			image_xscale=lerp(image_xscale,1,0.1);
			image_yscale=image_xscale;
		}
		if(round(cpos[0])==round(x-(global.game_width/2)) and round(cpos[1])==round(y-(global.game_height/2))){
			zoomed=true;
			with(btn_radar){
				x = cpos[0]+64;
				y = cpos[3]-64;
				image_xscale=1;
				image_yscale=image_xscale;
			}
			with(obj_bur_interface_switch){
				//x = cpos[2]-64;
				//y = cpos[3]-64;
				image_xscale=1;
				image_yscale=image_xscale;
			}
		}
	}
	else{
		var lerp_x = x-(global.game_width/2);
		var lerp_y = y-(global.game_height/2);
	}
	
	
	
	camera_set_view_size(cam,lerp_w,lerp_h)
	camera_set_view_pos(cam,lerp_x,lerp_y);
}
else{
	zoomed=false;
	var cpos = get_view_cam();
	var w = camera_get_view_width(cam);
	var h = camera_get_view_height(cam);
	var lerp_x = lerp(cpos[0]+cam_sdvig[0],x-(global.game_width/4)+cam_sdvig[0],0.1);
	var lerp_w = lerp(w,global.game_width/2,0.1);
	var lerp_y = lerp(cpos[1]+cam_sdvig[1],y-(global.game_height/4)+cam_sdvig[1],0.1);
	var lerp_h = lerp(h,global.game_height/2,0.1);
	camera_set_view_size(cam,lerp_w,lerp_h)
	camera_set_view_pos(cam,lerp_x,lerp_y);
	with(btn_radar){
		x = lerp(x,cpos[0]+32,0.1);
		y = lerp(y,cpos[3]+64,0.1);
		image_xscale=lerp(image_xscale,0.5,0.1);
		image_yscale=image_xscale;
	}
	with(obj_bur_interface_switch){
		//x = cpos[0]-32+lerp_w;
		//y = cpos[1]-32+lerp_h;
		image_xscale=lerp(image_xscale,0.5,0.1);
		image_yscale=image_xscale;
	}
}

if(x != need_x or y != need_y or zoom or !zoomed)exit;

if(keyboard_check(ord("W"))){
	perehod_na_new_grid(need_x,need_y-64);
	if(check_can_move(need_x,need_y-64)){
		need_y-=64;
		image_angle=90;
		finished_step=false;
		exit;
	}
}
if(keyboard_check(ord("S"))){
	perehod_na_new_grid(need_x,need_y+64);
	if(check_can_move(need_x,need_y+64)){
		need_y+=64;
		image_angle=360-90;
		finished_step=false;
		exit;
	}
}
if(keyboard_check(ord("A"))){
	perehod_na_new_grid(need_x-64,need_y);
	if(check_can_move(need_x-64,need_y)){
		need_x-=64;
		image_angle=180;
		finished_step=false;
		exit;
	}
}
if(keyboard_check(ord("D"))){
	perehod_na_new_grid(need_x+64,need_y);
	if(check_can_move(need_x+64,need_y)){
		need_x+=64;
		image_angle=0;
		finished_step=false;
		exit;
	}
}