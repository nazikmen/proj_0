function perehod_na_new_grid(_x,_y){
	
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