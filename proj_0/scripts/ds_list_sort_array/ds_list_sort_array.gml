///@arg0 id
///@arg1 array_pos
///@arg2 ascending
function ds_list_sort_array(d,pos,por){
	var d_z = ds_list_create();
	var d_n = ds_list_create();
	var ds_rez = ds_list_create();
	for(var i=0;i<ds_list_size(d);i++){
		if(is_array(d[|i])){
			if(array_length(d[|i])>pos){
				if(ds_list_find_index(d_z,d[|i][pos])==-1){//записываем все разные сортируемые значения по одному разу
					ds_list_add(d_z,d[|i][pos]);
				}
			}
			else ds_list_add(ds_rez,d[|i]);
		}
		else ds_list_add(ds_rez,d[|i]);//если не массив или нет по чему сортировать, записываем в отдельный список
	}
	
	ds_list_sort(d_z,por);
	
	for(var i=0;i<ds_list_size(d_z);i++){
		for(var s=0;s<ds_list_size(d);s++){
			if(d[|s][pos]==d_z[|i]){
				ds_list_add(d_n,d[|s]);//добавляем все массивы которые совпадают с сортированым списком по порядку
			}
		}
	}
	if(ds_list_size(ds_rez)>0){
		for(var i=0;i<ds_list_size(ds_rez);i++){
			ds_list_add(d_n,ds_rez[|i]);//Добавляем то что не подвергалось сортировке в конец, если оно есть
		}
	}
	ds_list_clear(d);
	ds_list_copy(d,d_n);
	ds_list_clear(d_n);
	ds_list_clear(d_z);
	ds_list_clear(ds_rez);
}

