if(!md){
	md=true;
	hp=clamp(hp-global.damage,0,infinity);
	if(hp==0){
		instance_destroy()
		instance_create(room_width/2,room_height/2,obj_enemy,0);
	}
}