/// @description start wave
var next_vw_time = 10;
for(var i=0;i<array_length(arr_enm);i++){
	var spawn_setting = arr_enm[i];
	next_vw_time+=spawn_setting[0];
	with(instance_create(irandom_range(0+sprite_width/2+25,room_width-sprite_width/2-25),50,obj_wave_spawner_enm)){
		enemy_id = spawn_setting[1];
		spawn_time = spawn_setting[0];
	}
}

wv++;
arr_enm = get_wave_enemys(wv);
