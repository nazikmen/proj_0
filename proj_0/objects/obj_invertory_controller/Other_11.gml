/// @description sort invertory
line_cnt = 1;
ds_list_sort_array(ds_inv,arr_ind_to_sort,false);
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