setup_view();
ins_enemy();
instance_create(room_width/2,room_height/2-100,obj_weapons_controller);

with(instance_create(global.view_x+(sprite_get_width(spr_invertory)*1.2)/2,global.view_y_2-(sprite_get_height(spr_invertory)*1.2)/2,obj_btn,-10)){
	function open_invertory(){
		if(!instance_exists(obj_invertory_controller))instance_create(room_width/2,room_height/2,obj_invertory_controller,-200);
		else instance_destroy(obj_invertory_controller);
	}
	scr = open_invertory;
	sprite_index=spr_invertory;
	image_xscale=1.2;
	image_yscale=1.2;
	text = "";
	
}