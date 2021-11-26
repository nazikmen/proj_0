if(instance_exists(obj_constructor_controller)){
	if(md){	
		x = mt_mouse_x+md_x;
		y = mt_mouse_y+md_y;
	}
exit;
}


if(anim){
	image_xscale=lerp(image_xscale,def_scale-def_scale*0.1,0.1);
	image_yscale=image_xscale;
	if(image_xscale-(def_scale-def_scale*0.1)<0.05)anim=false;
}else{
	image_xscale=lerp(image_xscale,def_scale,0.1);
	image_yscale=image_xscale;
}


