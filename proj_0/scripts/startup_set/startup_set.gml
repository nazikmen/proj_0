// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function startup_set(){
	global.round_speed = 0.3;
	gml_pragma("global", "startup_set()");
	
	global.dev_mode = true;
	global.localess = ds_list_create();
	ds_list_add(global.localess,"en","ru");
	global.enemy_killed_session = 0;
	global.enemy_killed_buffer = 0;
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
	
	//userdata ins
	global.ud_cr_list = get_ud_list();
	if(file_exists("userdata.data")){
		global.ud = ds_map_secure_load("userdata.data");
		var l = global.ud_cr_list;
		for(var i=0;i<ds_list_size(l);i++){
			ud_get(l[|i][0],l[|i][1],l[|i][2]);
		}
	}
	else{
		global.ud = ds_map_create();
		var l = global.ud_cr_list;
		for(var i=0;i<ds_list_size(l);i++){
			ud_get(l[|i][0],l[|i][1],l[|i][2]);
		}
		ds_map_secure_save(global.ud,"userdata.data")
	}
	//
	
	sd("start game: "+string(GM_version)+" runtime: "+string(GM_runtime_version)+" build_date: "+string(GM_build_date));
	global.loaded_sprites = ds_queue_create();
	randomize();
}

function ud_save(){
	var l = global.ud_cr_list;
	for(var i=0;i<ds_list_size(l);i++){
		if(variable_global_exists(l[|i][1])){
			global.ud[?l[|i][0]]=variable_global_get(l[|i][1]);
		}
	}
	
	ds_map_secure_save(global.ud,"userdata.data");
}

function ud_get(ud_name,global_name,default_val){
	if(ds_map_is_list(global.ud,ud_name)){
		var arr = [];
		for(var i=0;i<ds_list_size(global.ud[?ud_name]);i++){
			array_push(arr,global.ud[?ud_name][|i]);
		}
		ds_list_destroy(global.ud[?ud_name]);
		global.ud[?ud_name] = arr;
		variable_global_set(global_name,global.ud[?ud_name]);
	}
	else variable_global_set(global_name,global.ud[?ud_name]);
	if(variable_global_get(global_name)==undefined){
		ds_map_add(global.ud,ud_name,default_val);
		if(ds_map_is_list(global.ud,ud_name)){
			var arr = [];
			for(var i=0;i<ds_list_size(global.ud[?ud_name]);i++){
				array_push(arr,global.ud[?ud_name][|i]);
			}
			ds_list_destroy(global.ud[?ud_name]);
			global.ud[?ud_name] = arr;
			variable_global_set(global_name,global.ud[?ud_name]);
		}
		else variable_global_set(global_name,global.ud[?ud_name]);
		ud_save();
	}
}

function get_ud_list(){
	var ds = ds_list_create();
	//[ud_name,global_name,default_value]
	ds_list_add(ds,
	["damage","damage",1],
	["lvl","lvl",1],
	["coins","coins",0],
	["s_coins","s_coins",0]
	)
	
	//weapons [ud_name,global_name,[...]]
	//... [type,ind,effect]
	ds_list_add(ds,
	["milts_king_staff","milts_king_staff",["staff",100,1]],
	["emerald_halberd","emerald_halberd",["axe",101,1]],
	["fireheart_staff","fireheart_staff",["staff",102,1]],
	)
	return ds;
}	

function get_weapons_info(ind){
	//return [name(string),default dmg(int), type(string),]
	switch ind
	{
	case 100: return ["milts_king_staff",1,"staff"];
	case 101: return ["emerald_halberd",2,"axe"];
	case 102: return ["fireheart_staff",3,"staff"];
	}
	
}

	

function options_save(){
	global.options_map[?"sound"]=global.sound;
	global.options_map[?"music"]=global.music;
	global.options_map[?"locale"]=global.locale;
	ds_map_secure_save(global.options_map,"options.cnfg");
}