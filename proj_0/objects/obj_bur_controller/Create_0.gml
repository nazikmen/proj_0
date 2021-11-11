/// @description Insert description here
// You can write your code in this editor
ceil_size = 64;



word_gen_grid = function(_x,_y){//Генератор мира, возвращает наполненый грид и сохраняет мапу
	var g = ds_grid_create(16,16);
	
	if(file_exists("map/"+string(_x)+"x"+string(_y)+"_data.map")){
		var mm = ds_map_secure_load("map/"+string(_x)+"x"+string(_y)+"_data.map");
		for(var w=0;w<16;w++){
			for(var h=0;h<16;h++){
				var n = mm[?string(w)+"x"+string(h)];
				ds_grid_set(g,w,h,n);
			}
		}
		ds_map_destroy(mm);
		//Загрузка грида если есть
	}
	else{//Создание грида если нету сохраненного
		var mm = ds_map_create();
		for(var w=0;w<ds_grid_width(g);w++){
			for(var h=0;h<ds_grid_height(g);h++){
				var n = 0;//air
				if(_y+h*ceil_size>64*10)n=2;
				if(_y+h*ceil_size==64*10)n=2;
				if(_y+h*ceil_size>irandom_range(64*20,64*30))n=4;
				if(n==4){
					n = get_spawn_properties(_y+h*ceil_size);//спавн руды
				}
				ds_grid_set(g,w,h,n);
				ds_map_add(mm,string(w)+"x"+string(h),n);
			}
		}
		ds_map_secure_save(mm,"map/"+string(_x)+"x"+string(_y)+"_data.map");
		ds_map_destroy(mm);
	}
	
	return g;
}



get_active_sector = function(_x,_y){//Возвращает координаты грида в который попадает точка
	//if(_x>=0)_x=_x-(_x%ceil_size);
	//else _x=_x-(64-(-_x%ceil_size));
	//_y=_y-(_y%ceil_size);
	if(_x>=0)_x=_x-(_x%(16*ceil_size));
	else if(_x>-1024)_x=_x-(1024-(-_x%(16*ceil_size)));
	else{
		_x+=64;
		_x=_x-(1024-(-_x%(16*ceil_size)));
	}
	_y=_y-(_y%(16*ceil_size));
	return [_x,_y];
}
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
				






