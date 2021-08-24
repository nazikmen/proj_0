if(instance_exists(obj_enemy)){
	var ds_dist = ds_list_create();

	with(obj_enemy){
		ds_list_add(ds_dist,point_distance(x,y,obj_player.x,obj_player.y));	
	}

	ds_list_sort(ds_dist,1);
	with(obj_enemy){
		selected = false;
		var dst = point_distance(x,y,obj_player.x,obj_player.y);
		if(dst==ds_dist[|0] and dst<150)selected=true;
	}

	ds_list_destroy(ds_dist);
}