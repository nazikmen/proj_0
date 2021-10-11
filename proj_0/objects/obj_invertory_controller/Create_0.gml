event_inherited();
sd("j==================="+string(global.jopa))
sd("j==================="+string(global.jopa1))
if(ds_map_is_list(global.ud,"jopa")){
	sd(global.jopa[|2]);
	sd("blyat!")
}
y_ysvig = 0;
y_need_sdvig=0;
md=false;
pre_pos = [mouse_x,mouse_y];
mode = "";

image_xscale=1000;
image_yscale=1000;
ds_inv = ds_list_create();
line_cnt = 1;
for(var i=0;i<100;i++){
	var a = irandom(50);
	ds_list_add(ds_inv,[0,0,i,a]);
}
ds_list_sort_array(ds_inv,3,false);
y_shag = 90;
x_shag = 70;
st_p = [global.view_x+x_shag,global.view_y+200];

var max_x = global.view_x_2-x_shag-35;
for(var i=0;i<ds_list_size(ds_inv);i++){
	ds_inv[|i][0]=st_p[0];
	ds_inv[|i][1]=st_p[1];
	if(st_p[0]<=max_x)st_p[0]+=x_shag;
	else{
		st_p[0]=global.view_x+x_shag;
		st_p[1]+=y_shag;
		line_cnt++;
	}
}
st_p = [global.view_x+x_shag,global.view_y+200];

/*
ds_list_clear(ds_inv);
ds_list_copy(ds_inv,d);