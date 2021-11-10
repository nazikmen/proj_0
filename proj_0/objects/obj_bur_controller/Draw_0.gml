
for(var i=0;i<array_length(active_grids);i++){
	var g = active_grids[i][0];
	var g_pos = active_grids[i][1];
	if(ds_exists(g,ds_type_grid)){
		for(var w=0;w<ds_grid_width(g);w++){
			//0 air
			//1 grass
			//2 dirt
			//3 dirt bg
			//4 stone
			//5 stone bg
			
			for(var h=0;h<ds_grid_height(g);h++){
				var _x = g_pos[0]+w*ceil_size;
				var _y = g_pos[1]+h*ceil_size;
				if(_y == clamp(_y,obj_bur.y-global.game_height/2-100, obj_bur.y+global.game_height/2+100)){
					if(_x == clamp(_x,obj_bur.x-global.game_width/2-100, obj_bur.x+global.game_width/2+100)){
					
						var ind = 0;
						ind=ds_grid_get(g,w,h);
						//if(ds_grid_get(grid,w,h)==2)c=c_black;
						if(ind==6 or ind==7)draw_sprite(spr_blocks,4,_x,_y)
						draw_sprite(spr_blocks,ind,_x,_y);
					}
				}
		
			}
		}
	}
	var c = c_red;
	//draw_rectangle_color(g_pos[0]-32,g_pos[1]-32,g_pos[0]+1024-32,g_pos[1]+1024-32,c,c,c,c,1);
}
var g_pos = active_grids[4][1];
//draw_rectangle_color(g_pos[0]-32,g_pos[1]-32,g_pos[0]+1024-32,g_pos[1]+1024-32,c_green,c_green,c_green,c_green,1);
if(obj_bur.y < global.game_height+100){
	for(var i=-2;i<ceil(global.game_width/ceil_size)+2;i++){
		var st_x = ((obj_bur.x-global.game_width/2)-obj_bur.x%ceil_size);
		draw_sprite(spr_blocks,1,st_x+ceil_size*i,64*9);
	}
}