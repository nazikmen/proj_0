// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_locale(){
	var n_loc = ds_list_find_index(global.localess,global.locale);
	if (n_loc != ds_list_size(global.localess)-1)n_loc++;
	else n_loc = 0;
	global.locale = global.localess[|n_loc];
	get_locale_spr_flag(global.locale);
	options_save();
}

function get_locale_spr_flag(loc){
	switch(loc){
		case "en":	sprite_index = spr_flags; image_index = 0;break;
		case "ru":	sprite_index = spr_flags; image_index = 1;break;
	}
}