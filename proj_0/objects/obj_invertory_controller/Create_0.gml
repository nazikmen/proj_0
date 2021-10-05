event_inherited();
ds_inv = ds_list_create();
y_ysvig = 0;
y_need_sdvig=0;
md=false;
pre_pos = [mouse_x,mouse_y];
mode = "";
image_xscale=1000;
image_yscale=1000;
var st_p = [50,200]
var max_cnt = [];
for(var i=0;i<50;i++){
	//[x,y,id,count]
	var a = irandom(5);
	array_push(max_cnt,a);
	ds_list_add(ds_inv,[st_p[0],st_p[1],i,a]);
	if(st_p[0]<=400)st_p[0]+=70
	else{
		st_p[0]=50;
		st_p[1]+=90;
	}
}
array_sort(max_cnt,false);
var d = ds_list_create()
var mn = max_cnt[0];
sd("jopa============ "+string(max_cnt[0]))
var st_p = [50,200]
for(var i=0;i<ds_list_size(ds_inv);i++){
	for(var s=0;s<ds_list_size(ds_inv);s++){
		if(ds_inv[|s][3]==mn){
			
			
			ds_inv[|s][0]=st_p[0]
			ds_inv[|s][1]=st_p[1]
			if(st_p[0]<=400)st_p[0]+=70
			else{
				st_p[0]=50;
				st_p[1]+=90;
			}
			sd(ds_inv[|s])
			ds_list_add(d,ds_inv[|s]);
		}
	}
	mn--;
	if(mn<0)break;
}
ds_inv = d;
/*
ds_list_clear(ds_inv);
ds_list_copy(ds_inv,d);