/// @description check ebalo

var p = get_grid_pos();
with(obj_bur_controller){
	//0 air
	//1 grass
	//2 dirt
	//3 dirt bg
	//4 stone
	//5 stone bg
		
	if(ds_grid_get(active_grid,p[0],p[1])==2)ds_grid_set(active_grid,p[0],p[1],3);
	if(ds_grid_get(active_grid,p[0],p[1])==4)ds_grid_set(active_grid,p[0],p[1],5);
		
	//if(active_grid_pos[0]>obj_bur.x-100){
	//	var exst = false;
	//	for(var i=0;i<array_length(active_grids);i++){
	//		if(active_grids[i][1][0]==active_grid_pos[0]-ceil_size*17)exst=true;
	//	}
	//	if(!exst){
	//		var new_gr = word_gen_grid();
	//		array_push(active_grids,[new_gr,[active_grid_pos[0]-ceil_size*17,active_grid_pos[1]]]);
	//	}
	//}
		
}