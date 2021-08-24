/// @description md

if(!used and obj_joystick.move){
	emit_bol = true;
	md = true;
	used = true;
	with(obj_player)spd+=5;
	alarm[0] = 15;
	alarm[1] = 3*room_speed;
	image_blend = c_red;
	part_type_orientation(particle,obj_player.rot,obj_player.rot,0,0,1);
	part_emitter_region(psys,emitter1,obj_player.x-20,obj_player.x+20,obj_player.y-16,obj_player.y+16,ps_shape_ellipse,1);
	//part_emitter_stream(psys,emitter1,particle,5);
	part_emitter_burst(psys,emitter1,particle,irandom(5));
}