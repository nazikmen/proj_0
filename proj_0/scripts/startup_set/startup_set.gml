// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function startup_set(){
	gml_pragma("global", "startup_set()");
	global.dev_mode = true;
	global.localess = ds_list_create();
	ds_list_add(global.localess,"en","ru");
	
	if(file_exists("userdata.data")){
		global.ud = ds_map_secure_load("userdata.data");
		global.damage = global.ud[?"user_damage"];
	}
	else{
		global.ud = ds_map_create();
		ds_map_add(global.ud,"user_damage",1);
		ds_map_secure_save(global.ud,"userdata.data")
		
		global.damage = global.ud[?"user_damage"];
	}
	
	if(file_exists("options.cnfg")){
		global.options_map = ds_map_secure_load("options.cnfg");
		
		global.sound=global.options_map[?"sound"];
		global.music=global.options_map[?"music"];
		global.locale = global.options_map[?"locale"];
	}
	else{
		global.options_map = ds_map_create();
		ds_map_add(global.options_map,"locale","en");
		ds_map_add(global.options_map,"sound",1);
		ds_map_add(global.options_map,"music",1);
		ds_map_add(global.options_map,"user_damage",1);
		ds_map_secure_save(global.options_map,"options.cnfg")
		
		
		global.sound=global.options_map[?"sound"];
		global.music=global.options_map[?"music"];
		global.locale = global.options_map[?"locale"];
	}
	
	draw_set_font(fnt_default);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	
	
	sd("start game: "+string(GM_version)+" runtime: "+string(GM_runtime_version)+" build_date: "+string(GM_build_date));
	global.loaded_sprites = ds_queue_create();
	randomize();
}

function options_save(){
	global.options_map[?"sound"]=global.sound;
	global.options_map[?"music"]=global.music;
	global.options_map[?"locale"]=global.locale;
	global.options_map[?"user_damage"]=global.damage;
	ds_map_secure_save(global.options_map,"options.cnfg");
}

function ud_save(){
	global.ud[?"user_damage"]=global.damage;
	ds_map_secure_save(global.ud,"userdata.data");
}