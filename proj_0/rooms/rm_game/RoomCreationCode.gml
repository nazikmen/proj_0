setup_view();
ins_enemy();
instance_create(room_width/2,room_height/2-100,obj_weapons_controller);

with(instance_create(global.view_x+100,global.view_y_2-75,obj_btn,-10)){
	function open_invertory(){
		if(!instance_exists(obj_invertory_controller))instance_create(room_width/2,room_height/2,obj_invertory_controller,-200);
		else instance_destroy(obj_invertory_controller);
	}
	scr = open_invertory;
	text = "invertory_btn";
	
}