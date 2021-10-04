if(!md){
	md=true;
	scr_make_damage(global.damage,1);
	image_blend = c_red;
	alarm[1]=2;
	image_xscale = 2.9;
	image_yscale = 2.9;
	if(hp==0){
		instance_destroy()
		global.damage++;
		instance_create(room_width/2,room_height/2,obj_enemy,0);
	}
}