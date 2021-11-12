/// @description Insert description here
// You can write your code in this editor
if(!finded)exit;
if(instance_exists(obj_dlg))exit;
var c = c_white;
if(blink_time>0){
	c=c_green;
	blink_time--;
	if(blink_time==0)alarm[1]=lerp(0.2,5,(point_distance(x,y,obj_bur.x,obj_bur.y)/64)/(((64*200)+(64*200))/64))*room_speed;
}
var cam=view_get_camera(view_camera[0]);
var vx = camera_get_view_border_x(cam);
var vy = camera_get_view_border_y(cam);

if(x!=clamp(x,vx,vx+global.game_width) or y!=clamp(y,vy,vy+global.game_height)){
	with(obj_bur){
		var r = 100;
		var dir = point_direction(x,y,other.x,other.y);
		var xx  = x + cos(degtorad(-dir)) * r;
		var yy = y + sin(degtorad(-dir)) * r;
		draw_sprite_ext(spr_arrow,0,xx,yy,1,1,dir,c,1);
		//draw_set_color(c_yellow);
		//draw_text(xx,yy+60,string(point_distance(x,y,other.x,other.y)/64));
		//draw_set_color(c_white);
	}
}