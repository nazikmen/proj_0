// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_price_upgrade_depth(now_depth){
	return round(now_depth + now_depth*0.27)*512;
}
