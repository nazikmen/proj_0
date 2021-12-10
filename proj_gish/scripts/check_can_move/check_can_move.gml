function check_can_move(_x,_y){
	with(obj_bur_controller){
		if(_y-9*64 <= obj_bur.kislorod*64 or _y <= obj_bur.y){
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
		else return false
	}
}