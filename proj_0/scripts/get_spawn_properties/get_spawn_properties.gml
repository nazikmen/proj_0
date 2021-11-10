//0 air
//1 grass
//2 dirt
//3 dirt bg
//4 stone
//5 stone bg
//7 iron 64*20 - 64*1000
//6 gold 64*500 - 64*10000



//spr_blocks
function get_spawn_properties(_y){
	var arr_res = []
	
	var a = 64*20;//iron
	var b = 64*1000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,7);
	}
	var a = 64*500;//gold
	var b = 64*10000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,6);
	}
	var r = 4;
	if(array_length(arr_res)>0 and irandom(100)>80)r=arr_res[irandom(array_length(arr_res)-1)];
	return r;
}