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
for(var i=0;i<50;i++){
	//[x,y,id,count]
	ds_list_add(ds_inv,[st_p[0],st_p[1],i,irandom(5)]);
	if(st_p[0]<=400)st_p[0]+=70
	else{
		st_p[0]=50;
		st_p[1]+=90;
	}
}