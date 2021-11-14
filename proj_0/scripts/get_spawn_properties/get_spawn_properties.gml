//0 air
//1 grass
//2 dirt
//3 dirt bg
//4 stone
//5 stone bg
//7 iron 64*20 - 64*1000
//6 gold 64*500 - 64*10000



//spr_blocks
function get_spawn_properties(_y,n){
	var arr_res = []
	
	
	switch(n){
		case 4:{
			var ind_iron = 4000;
			var ind_gold = 4001;
			var ind_coal = 4002;
			var ind_cooper = 4003;
			var ind_diamond = 4004;
			var ind_izumrude = 4005;
			var ind_lazurite = 4006;
			var ind_redstone = 4007;
			break;
		}
		case 6:{
			var ind_iron = 6000;
			var ind_gold = 6001;
			var ind_coal = 6002;
			var ind_cooper = 6003;
			var ind_diamond = 6004;
			var ind_izumrude = 6005;
			var ind_lazurite = 6006;
			var ind_redstone = 6007;
			break;
		}
		case 8:{
			var ind_iron = 8000;
			var ind_gold = 8001;
			var ind_coal = 8002;
			var ind_cooper = 8003;
			var ind_diamond = 8004;
			var ind_izumrude = 8005;
			var ind_lazurite = 8006;
			var ind_redstone = 8007;
			break;
		}
		case 10:{
			var ind_iron = 10000;
			var ind_gold = 10001;
			var ind_coal = 10002;
			var ind_cooper = 10003;
			var ind_diamond = 10004;
			var ind_izumrude = 10005;
			var ind_lazurite = 10006;
			var ind_redstone = 10007;
			break;
		}
		case 12:{
			var ind_iron = 12000;
			var ind_gold = 12001;
			var ind_coal = 12002;
			var ind_cooper = 12003;
			var ind_diamond = 12004;
			var ind_izumrude = 12005;
			var ind_lazurite = 12006;
			var ind_redstone = 12007;
			break;
		}
		case 14:{
			var ind_iron = 14000;
			var ind_gold = 14001;
			var ind_coal = 14002;
			var ind_cooper = 14003;
			var ind_diamond = 14004;
			var ind_izumrude = 14005;
			var ind_lazurite = 14006;
			var ind_redstone = 14007;
			break;
		}
		case 16:{
			var ind_iron = 16000;
			var ind_gold = 16001;
			var ind_coal = 16002;
			var ind_cooper = 16003;
			var ind_diamond = 16004;
			var ind_izumrude = 16005;
			var ind_lazurite = 16006;
			var ind_redstone = 16007;
			break;
		}
		case 18:{
			var ind_iron = 18000;
			var ind_gold = 18001;
			var ind_coal = 18002;
			var ind_cooper = 18003;
			var ind_diamond = 18004;
			var ind_izumrude = 18005;
			var ind_lazurite = 18006;
			var ind_redstone = 18007;
			break;
		}
		default:{
			sd("get_spawn_properties() return default!");
			var ind_iron = 4000;
			var ind_gold = 4001;
			var ind_coal = 4002;
			var ind_cooper = 4003;
			var ind_diamond = 4004;
			var ind_izumrude = 4005;
			var ind_lazurite = 4006;
			var ind_redstone = 4007;
			break;
		}
		
		
	}
	#region randomize
	var a = 64*20;
	var b = 64*30000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_coal);
	}
	
	var a = 64*20;
	var b = 64*1000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_iron);
	}
	
	var a = 64*500;
	var b = 64*10000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_gold);
	}
	
	var a = 64*5000;
	var b = 64*35000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_cooper);
	}
	
	var a = 64*10000;
	var b = 64*100000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_lazurite);
	}
	
	var a = 64*40000;
	var b = 64*150000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_diamond);
	}
	
	var a = 64*150000;
	var b = 64*200000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_izumrude);
	}
	
	var a = 64*70000;
	var b = 64*200000;
	if(_y>a){
		var proc = clamp(_y/b,0,0.5)*100;
		if(irandom(100)<proc)array_push(arr_res,ind_izumrude);
	}
	#endregion
	
	var r = n;
	if(array_length(arr_res)>0 and irandom(100)>80)r=arr_res[irandom(array_length(arr_res)-1)];
	
	return r;
}