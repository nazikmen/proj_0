x-=x%64;
y-=y%64;
need_x=x;
need_y=y;
spd = 5;
finished_step=true;

check_can_move = function(_x,_y){
	with(obj_bur_controller){
		_x-=active_grid_pos[0];
		_y-=active_grid_pos[1];
		var gr_x = (_x-(_x%ceil_size))/ceil_size;
		var gr_y = (_y-(_y%ceil_size))/ceil_size;
		var ch_gr = active_grid;
		if(ds_grid_get(ch_gr,gr_x,gr_y)!=0){
			return true;
		}
		else return false;
	}
}

get_grid_pos = function(){
	var _x = x;
	var _y = y;
	with(obj_bur_controller){
		_x-=active_grid_pos[0];
		_y-=active_grid_pos[1];
		var gr_x = (_x-(_x%ceil_size))/ceil_size;
		var gr_y = (_y-(_y%ceil_size))/ceil_size;
	}
	return [gr_x,gr_y];
}
	
perehod_na_new_grid = function(_x,_y){
	
	with(obj_bur_controller){
		var n_pos = get_active_sector(_x,_y);
		//sd("n_pos: "+string(n_pos));
		//sd("active_grid_pos: "+string(active_grid_pos));
		if(active_grid_pos[0] != n_pos[0] or active_grid_pos[1] != n_pos[1]){
			event_user(2);
			for(var i=0;i<array_length(active_grids);i++){
				if(ds_exists(active_grids[i][0],ds_type_grid))ds_grid_destroy(active_grids[i][0]);
				if(surface_exists(active_grids[i][2]))surface_free(active_grids[i][2]);
			}
			active_grid_pos = get_active_sector(_x,_y);
			active_grid = -1;
			active_surf=-1;
			active_grids = [[-1,[0,0],-1],			[-1,[0,0],-1],			 [-1,[0,0],-1],  //g0 g1 g2
							[-1,[0,0],-1],[active_grid,active_grid_pos,active_surf],[-1,[0,0],-1],  //g3 x4 g5
							[-1,[0,0],-1],			[-1,[0,0],-1],			[-1,[0,0],-1]];  //g6 g7 g8
			event_user(1);
		}
	}
}
	
instance_create(x,y,obj_joystick);