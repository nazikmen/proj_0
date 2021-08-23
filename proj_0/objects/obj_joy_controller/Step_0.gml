/// @description Insert description here
// You can write your code in this editor
if(md){
	if(point_distance(press_point[0],press_point[1],mouse_x,mouse_y)>20){
		with(obj_player_sign){
			
			x=clamp(x+clamp((mouse_x-other.press_point[0])/10,-5,5),0+25+point_distance(x,0,bbox_right,0),room_width-point_distance(x,0,bbox_right,0)-25)
			y=clamp(y+clamp((mouse_y-other.press_point[1])/10,-5,5),0+25+point_distance(0,y,0,bbox_top),room_height-25-point_distance(0,y,0,bbox_top))
			var dist_x = other.begin_pos[0]-x;
			var dist_y = other.begin_pos[1]-y;
			//nwrl
			if(abs(dist_x)>abs(dist_y)){
				if(dist_x>0)image_index=2;	
				if(dist_x<0)image_index=3;	
			}
			else{
				if(dist_y>0)image_index=1;	
				if(dist_y<0)image_index=0;	
			}
		}
	}
}