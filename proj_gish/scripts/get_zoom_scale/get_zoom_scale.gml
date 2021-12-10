// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_zoom_scale(){
	var def_w = global.game_width;
	var cam = view_get_camera(view_camera[0]);
	var now_w = camera_get_view_width(cam);
	var sc = now_w/def_w;
	return sc;
}