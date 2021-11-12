// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_view_cam(){
	var cam=view_get_camera(view_camera[0]);
	var vx = camera_get_view_x(cam);
	var vy = camera_get_view_y(cam);
	return [vx,vy,vx+global.game_width,vy+global.game_height];
}