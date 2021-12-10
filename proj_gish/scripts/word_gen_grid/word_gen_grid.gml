function word_gen_grid(_x,_y){//Генератор мира, возвращает наполненый грид и сохраняет мапу
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
		//spr_blocks
		//spr_ores
		var mm = ds_map_create();
		for(var w=0;w<ds_grid_width(g);w++){
			for(var h=0;h<ds_grid_height(g);h++){
				var n = 0;//air
				if(_y+h*ceil_size>64*10)n=2;
				if(_y+h*ceil_size==64*10)n=2;
				if(_y+h*ceil_size>irandom_range(64*20,64*30))n=4;//камень 1
				if(_y+h*ceil_size>irandom_range(64*70,64*100))n=6;//камень 2
				if(_y+h*ceil_size>irandom_range(64*290,64*320))n=8;//камень 3
				if(_y+h*ceil_size>irandom_range(64*800,64*820))n=10;//камень 4
				if(_y+h*ceil_size>irandom_range(64*2000,64*2030))n=12;//камень 5
				if(_y+h*ceil_size>irandom_range(64*15000,64*15040))n=14;//камень 6
				if(_y+h*ceil_size>irandom_range(64*30000,64*30040))n=16;//лава синяя
				if(_y+h*ceil_size>irandom_range(64*100000,64*100100))n=18;//лава красная
				
				n = get_spawn_properties(_y+h*ceil_size,n);//спавн руды
				
				ds_grid_set(g,w,h,n);
				ds_map_add(mm,string(w)+"x"+string(h),n);
			}
		}
		ds_map_secure_save(mm,"map/"+string(_x)+"x"+string(_y)+"_data.map");
		ds_map_destroy(mm);
	}
	
	return g;
}