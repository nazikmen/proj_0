if(md){
	md=false;
	for(var i=0;i<array_length(name_arr);i++){
		if(mouse_y=clamp(mouse_y,global.view_y+100+100*i,global.view_y+200+100*i))num_dlg=i;
	}
}