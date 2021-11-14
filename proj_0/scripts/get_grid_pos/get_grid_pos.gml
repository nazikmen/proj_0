function get_grid_pos(_x,_y){
	
	with(obj_bur_controller){
		_x-=active_grid_pos[0];
		_y-=active_grid_pos[1];
		var gr_x = (_x-(_x%ceil_size))/ceil_size;
		var gr_y = (_y-(_y%ceil_size))/ceil_size;
	}
	return [gr_x,gr_y];
}