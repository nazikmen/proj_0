var static_objects = [obj_wall, obj_enemy];

var next_x = obj_player.x;
var next_y = obj_player.y;
used_kb = false;
if(keyboard_check(ord("W"))){
	var next_y = clamp(obj_player.y-obj_player.spd,150,room_height-150);
	used_kb = true;
}
if(keyboard_check(ord("S"))){
	var next_y = clamp(obj_player.y+obj_player.spd,150,room_height-150);
	used_kb = true;
}
if(keyboard_check(ord("A"))){
	var next_x = clamp(obj_player.x-obj_player.spd,150,room_width-150);
	used_kb = true;
}
if(keyboard_check(ord("D"))){
	var next_x = clamp(obj_player.x+obj_player.spd,150,room_width-150);
	used_kb = true;
}
var uuskb = used_kb;
if(md or uuskb){
	var loc_mouse = [mouse_x-x,mouse_y-y]
	var ppdist = 0;
	if(is_array(pos_md))ppdist = point_distance(loc_mouse[0],loc_mouse[1],pos_md[0],pos_md[1]);
	if(ppdist>10 or uuskb){
		with(obj_player){
			other.move = false;
			
			if(!uuskb){
				var next_x = clamp(x+clamp(clamp(loc_mouse[0]-other.pos_md[0],-50,50)/25*spd,0-spd,spd),150,room_width-150);
				var next_y = clamp(y+clamp(clamp(loc_mouse[1]-other.pos_md[1],-50,50)/25*spd,0-spd,spd),150,room_height-150);
			}
			var can_move = [1,1];
			for(var i=0;i<array_length(static_objects);i++){
				if(place_meeting(next_x,y,static_objects[i]))can_move[0] = 0;
				if(place_meeting(x,next_y,static_objects[i]))can_move[1] = 0;
			}
			if(can_move[0])x = next_x;
			if(can_move[1])y = next_y;
			if(can_move[0] or can_move[1])other.move = true;

			
			//image_speed = clamp(abs(clamp(clamp(loc_mouse[1]-other.pos_md[1],-50,50)/10,0-spd,spd))
			//+abs(clamp(clamp(loc_mouse[0]-other.pos_md[0],-50,50)/10,0-spd,spd)),0,spd);
		}
	}
	else move = false;
	//else{
	//	with(obj_player){
	//		image_speed = 0;
	//		image_index = 0;
	//	}
	//}
}
else move = false;
//else{
//	with(obj_player){
//		image_speed = 0;
//		image_index = 0;
//	}
//}