event_inherited();
ds_inv = ds_list_create();
y_ysvig = 0;
y_need_sdvig=0;
md=false;
pre_pos = [mouse_x,mouse_y];
mode = "";

image_xscale=1000;
image_yscale=1000;
//var st_p = [50,200]
//var max_cnt = [];
for(var i=0;i<50;i++){
	//[x,y,id,count]
	var a = irandom(50);
	//array_push(max_cnt,a);
	ds_list_add(ds_inv,[0,0,i,a]);
	//if(st_p[0]<=400)st_p[0]+=70
	//else{
	//	st_p[0]=50;
	//	st_p[1]+=90;
	//}
}
ds_list_sort_array(ds_inv,3,false);
//array_sort(max_cnt,false);
//var d = ds_list_create()
//var mn = max_cnt[0];
//sd("jopa============ "+string(max_cnt[0]))
var st_p = [50,200]
for(var i=0;i<ds_list_size(ds_inv);i++){
	ds_inv[|i][0]=st_p[0];
	ds_inv[|i][1]=st_p[1];
	if(st_p[0]<=400)st_p[0]+=70
	else{
		st_p[0]=50;
		st_p[1]+=90;
	}
}

/*
ds_list_clear(ds_inv);
ds_list_copy(ds_inv,d);