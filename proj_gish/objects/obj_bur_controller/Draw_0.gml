
for(var i=0;i<array_length(active_grids);i++){
	var g = active_grids[i][0];
	var g_pos = active_grids[i][1];
	if(!surface_exists(active_grids[i][2])){
		active_grids[i][2]=surface_create(1024,1024);
		if(i==4)active_surf=active_grids[i][2];
		surface_set_target(active_grids[i][2]);
		if(ds_exists(g,ds_type_grid)){
			for(var w=0;w<ds_grid_width(g);w++){
				for(var h=0;h<ds_grid_height(g);h++){
					var _x = w*ceil_size+32;
					var _y = h*ceil_size+32;
					var ind = ds_grid_get(g,w,h);
					scr_draw_world_blocks(ind,_x,_y);
				}
			}
		}
		surface_reset_target();
	}
	if(surface_exists(active_grids[i][2])){
		draw_surface(active_grids[i][2],g_pos[0]-32,g_pos[1]-32);
	}
	var c = c_red;
	//draw_rectangle_color(g_pos[0]-32,g_pos[1]-32,g_pos[0]+1024-32,g_pos[1]+1024-32,c,c,c,c,1);
}
var g_pos = active_grids[4][1];
//draw_rectangle_color(g_pos[0]-32,g_pos[1]-32,g_pos[0]+1024-32,g_pos[1]+1024-32,c_green,c_green,c_green,c_green,1);
if(obj_bur.y < global.game_height+100){
	for(var i=-2;i<ceil(global.game_width/ceil_size)+2;i++){
		var st_x = ((obj_bur.x-global.game_width/2)-obj_bur.x%ceil_size);
		draw_sprite(spr_blocks,1,st_x+ceil_size*i,64*9+12);
	}
}