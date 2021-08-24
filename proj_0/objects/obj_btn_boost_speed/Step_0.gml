x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-100;
y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-100;

if(emit_bol){
	part_emitter_burst(psys,emitter1,particle,irandom(5));
	part_type_orientation(particle,obj_player.rot,obj_player.rot,0,0,1);
	part_emitter_region(psys,emitter1,obj_player.x-20,obj_player.x+20,obj_player.y-16,obj_player.y+16,ps_shape_ellipse,1);
}