//x=lerp(x,need_x,0.2);
//y=lerp(y,need_y,0.2);
if(!finished_step){
	//alarm[0]=1;
	mp_linear_step(need_x,need_y,spd,false);
	var p = get_grid_pos();
	if(x == need_x and y == need_y){
		
		x-=x%64;
		y-=y%64;
		with(obj_bur_controller){
			//0 air
			//1 grass
			//2 dirt
			//3 dirt bg
			//4 stone
			//5 stone bg
			switch(ds_grid_get(active_grid,p[0],p[1])){
				case 2: ds_grid_set(active_grid,p[0],p[1],3);break;
				case 4: ds_grid_set(active_grid,p[0],p[1],5);break;
				case 6: {
					var dr = irandom_range(100,300)
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					break;
				}
				case 7: {
					var dr = irandom_range(10,50)
					global.coins+=dr;
					with(instance_create(other.x,other.y,obj_dmg_drop,other.depth-1)){
						dmg_draw = dr;
					}
					ds_grid_set(active_grid,p[0],p[1],5);
					break;
				}
			}
		}
		finished_step=true;
	}
}

var cam=view_get_camera(view_camera[0]);
camera_set_view_pos(cam,x-(global.game_width/2),y-(global.game_height/2));

if(x != need_x or y != need_y)exit;

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