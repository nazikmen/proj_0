event_inherited();
y_ysvig = 0;
y_need_sdvig=0;
md=false;
pre_pos = [mouse_x,mouse_y];
mode = "";

image_xscale=1000;
image_yscale=1000;
ds_inv = ds_list_create();
line_cnt = 1;
for(var i=0;i<20;i++){
	//[x,y,index,item_cnt,rare,name,damage]
	var a = irandom(50);
	var rare = irandom(5);
	var name = choose("a","b","c","d","e","f","g");
	var dm = irandom(100);
	ds_list_add(ds_inv,[0,0,i,a,rare,name,dm]);
}
arr_ind_to_sort = 3;
event_user(1);