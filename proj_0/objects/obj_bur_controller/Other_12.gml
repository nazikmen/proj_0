/// @description save

for(var i=0;i<array_length(active_grids);i++){
	var g = active_grids[i][0];
	var g_pos = active_grids[i][1];
	var mm = ds_map_create();
	for(var w=0;w<ds_grid_width(g);w++){
		for(var h=0;h<ds_grid_height(g);h++){
			var n = ds_grid_get(g,w,h);
			ds_map_add(mm,string(w)+"x"+string(h),n);
		}
	}
	ds_map_secure_save(mm,"map/"+string(g_pos[0])+"x"+string(g_pos[1])+"_data.map");
	ds_map_destroy(mm);
}


with(obj_bur){
	var mm = ds_map_create();
	mm[?"x"]=need_x; 
	mm[?"y"]=need_y;
	mm[?"coins"]=global.coins;
	ds_map_secure_save(mm,"player_info.map");
	ds_map_destroy(mm);
}