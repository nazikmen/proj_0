/// @description Insert description here
// You can write your code in this editor
ceil_size = 64;
global.coins = 0;

var player_pos = [288-288%64, 612-612%64];
if(file_exists("player_info.map")){
	var mm = ds_map_secure_load("player_info.map");
	var _x = mm[?"x"];
	var _y = mm[?"y"];
	global.coins=mm[?"coins"];
	ds_map_destroy(mm);
	_x-=_x%64;
	_y-=_y%64;
	instance_create(_x,_y,obj_bur,-10);
	player_pos = [_x,_y];
}
else {
	var ist = instance_create(player_pos[0], player_pos[1], obj_bur,-10);
	ist.image_angle=360-90;
	var mm = ds_map_create();
	ds_map_add(mm,"x",player_pos[0]);
	ds_map_add(mm,"y",player_pos[1]);
	ds_map_add(mm,"coins",global.coins);
}

active_grid_pos = get_active_sector(player_pos[0],player_pos[1]);
active_grid = -1;
active_surf=-1;
active_grids = [[-1,[0,0],-1],			[-1,[0,0],-1],			 [-1,[0,0],-1],  //g0 g1 g2
				[-1,[0,0],-1],[active_grid,active_grid_pos,active_surf],[-1,[0,0],-1],  //g3 x4 g5
				[-1,[0,0],-1],			[-1,[0,0],-1],			[-1,[0,0],-1]];  //g6 g7 g8
event_user(1);
				






