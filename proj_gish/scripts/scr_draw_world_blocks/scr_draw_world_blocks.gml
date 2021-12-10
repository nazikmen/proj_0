// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_world_blocks(ind,_x,_y){
	var ore_to_draw = 0;
	var block_to_draw = 4;
	var def = false;
	switch(ind){
		
		#region 4
		case 4000:{
			block_to_draw = 4;
			ore_to_draw = 0;
			break;
		}
		case 4001:{
			block_to_draw = 4;
			ore_to_draw = 1;
			break;
		}
		case 4002:{
			block_to_draw = 4;
			ore_to_draw = 2;
			break;
		}
		case 4003:{
			block_to_draw = 4;
			ore_to_draw = 3;
			break;
		}
		case 4004:{
			block_to_draw = 4;
			ore_to_draw = 4;
			break;
		}
		case 4005:{
			block_to_draw = 4;
			ore_to_draw = 5;
			break;
		}
		case 4006:{
			block_to_draw = 4;
			ore_to_draw = 6;
			break;
		}
		case 4007:{
			block_to_draw = 4;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 6
		case 6000:{
			block_to_draw = 6;
			ore_to_draw = 0;
			break;
		}
		case 6001:{
			block_to_draw = 6;
			ore_to_draw = 1;
			break;
		}
		case 6002:{
			block_to_draw = 6;
			ore_to_draw = 2;
			break;
		}
		case 6003:{
			block_to_draw = 6;
			ore_to_draw = 3;
			break;
		}
		case 6004:{
			block_to_draw = 6;
			ore_to_draw = 4;
			break;
		}
		case 6005:{
			block_to_draw = 6;
			ore_to_draw = 5;
			break;
		}
		case 6006:{
			block_to_draw = 6;
			ore_to_draw = 6;
			break;
		}
		case 6007:{
			block_to_draw = 6;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 8
		case 8000:{
			block_to_draw = 8;
			ore_to_draw = 0;
			break;
		}
		case 8001:{
			block_to_draw = 8;
			ore_to_draw = 1;
			break;
		}
		case 8002:{
			block_to_draw = 8;
			ore_to_draw = 2;
			break;
		}
		case 8003:{
			block_to_draw = 8;
			ore_to_draw = 3;
			break;
		}
		case 8004:{
			block_to_draw = 8;
			ore_to_draw = 4;
			break;
		}
		case 8005:{
			block_to_draw = 8;
			ore_to_draw = 5;
			break;
		}
		case 8006:{
			block_to_draw = 8;
			ore_to_draw = 6;
			break;
		}
		case 8007:{
			block_to_draw = 8;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 10
		case 10000:{
			block_to_draw = 10;
			ore_to_draw = 0;
			break;
		}
		case 10001:{
			block_to_draw = 10;
			ore_to_draw = 1;
			break;
		}
		case 10002:{
			block_to_draw = 10;
			ore_to_draw = 2;
			break;
		}
		case 10003:{
			block_to_draw = 10;
			ore_to_draw = 3;
			break;
		}
		case 10004:{
			block_to_draw = 10;
			ore_to_draw = 4;
			break;
		}
		case 10005:{
			block_to_draw = 10;
			ore_to_draw = 5;
			break;
		}
		case 10006:{
			block_to_draw = 10;
			ore_to_draw = 6;
			break;
		}
		case 10007:{
			block_to_draw = 10;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 12
		case 12000:{
			block_to_draw = 12;
			ore_to_draw = 0;
			break;
		}
		case 12001:{
			block_to_draw = 12;
			ore_to_draw = 1;
			break;
		}
		case 12002:{
			block_to_draw = 12;
			ore_to_draw = 2;
			break;
		}
		case 12003:{
			block_to_draw = 12;
			ore_to_draw = 3;
			break;
		}
		case 12004:{
			block_to_draw = 12;
			ore_to_draw = 4;
			break;
		}
		case 12005:{
			block_to_draw = 12;
			ore_to_draw = 5;
			break;
		}
		case 12006:{
			block_to_draw = 12;
			ore_to_draw = 6;
			break;
		}
		case 12007:{
			block_to_draw = 12;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 14
		case 14000:{
			block_to_draw = 14;
			ore_to_draw = 0;
			break;
		}
		case 14001:{
			block_to_draw = 14;
			ore_to_draw = 1;
			break;
		}
		case 14002:{
			block_to_draw = 14;
			ore_to_draw = 2;
			break;
		}
		case 14003:{
			block_to_draw = 14;
			ore_to_draw = 3;
			break;
		}
		case 14004:{
			block_to_draw = 14;
			ore_to_draw = 4;
			break;
		}
		case 14005:{
			block_to_draw = 14;
			ore_to_draw = 5;
			break;
		}
		case 14006:{
			block_to_draw = 14;
			ore_to_draw = 6;
			break;
		}
		case 14007:{
			block_to_draw = 14;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 16
		case 16000:{
			block_to_draw = 16;
			ore_to_draw = 0;
			break;
		}
		case 16001:{
			block_to_draw = 16;
			ore_to_draw = 1;
			break;
		}
		case 16002:{
			block_to_draw = 16;
			ore_to_draw = 2;
			break;
		}
		case 16003:{
			block_to_draw = 16;
			ore_to_draw = 3;
			break;
		}
		case 16004:{
			block_to_draw = 16;
			ore_to_draw = 4;
			break;
		}
		case 16005:{
			block_to_draw = 16;
			ore_to_draw = 5;
			break;
		}
		case 16006:{
			block_to_draw = 16;
			ore_to_draw = 6;
			break;
		}
		case 16007:{
			block_to_draw = 16;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		#region 18
		case 18000:{
			block_to_draw = 18;
			ore_to_draw = 0;
			break;
		}
		case 18001:{
			block_to_draw = 18;
			ore_to_draw = 1;
			break;
		}
		case 18002:{
			block_to_draw = 18;
			ore_to_draw = 2;
			break;
		}
		case 18003:{
			block_to_draw = 18;
			ore_to_draw = 3;
			break;
		}
		case 18004:{
			block_to_draw = 18;
			ore_to_draw = 4;
			break;
		}
		case 18005:{
			block_to_draw = 18;
			ore_to_draw = 5;
			break;
		}
		case 18006:{
			block_to_draw = 18;
			ore_to_draw = 6;
			break;
		}
		case 18007:{
			block_to_draw = 18;
			ore_to_draw = 7;
			break;
		}
		#endregion
		
		
		
		
		
		default: {
			def = true;
			draw_sprite(spr_blocks,ind,_x,_y);
		}
	}
	
	if(!def){
		draw_sprite(spr_blocks,block_to_draw,_x,_y);
		draw_sprite(spr_ores,ore_to_draw,_x,_y);
	}
}