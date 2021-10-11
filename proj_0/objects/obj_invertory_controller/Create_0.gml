event_inherited();

y_ysvig = 0;
y_need_sdvig=0;
md=false;
pre_pos = [mouse_x,mouse_y];
mode = "";

image_xscale=1000;
image_yscale=1000;
ds_inv = ds_list_create();
for(var i=0;i<50;i++){
	var a = irandom(50);
	ds_list_add(ds_inv,[0,0,i,a]);
}
ds_list_sort_array(ds_inv,3,false);
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